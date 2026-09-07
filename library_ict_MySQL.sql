-- Run this AFTER creating the database yourself (see checklist Step 5) --
-- so do NOT include a CREATE DATABASE line when you actually run this   --

CREATE TABLE library (
    library_id      INT AUTO_INCREMENT PRIMARY KEY,
    library_name    VARCHAR(50)  NOT NULL UNIQUE,
    building_desc   VARCHAR(100)
);

CREATE TABLE room_type (
    room_type_id    INT AUTO_INCREMENT PRIMARY KEY,
    type_name       VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE room (
    room_id         INT AUTO_INCREMENT PRIMARY KEY,
    library_id      INT NOT NULL,
    room_type_id    INT NOT NULL,
    room_name       VARCHAR(50) NOT NULL,
    floor_no        VARCHAR(20),
    CONSTRAINT fk_room_library FOREIGN KEY (library_id) REFERENCES library(library_id),
    CONSTRAINT fk_room_type    FOREIGN KEY (room_type_id) REFERENCES room_type(room_type_id),
    UNIQUE (library_id, room_name)
);

CREATE TABLE status (
    status_id       INT AUTO_INCREMENT PRIMARY KEY,
    status_name     VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE component_type (
    component_type_id  INT AUTO_INCREMENT PRIMARY KEY,
    type_name           VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE computer_type (
    computer_type_id   INT AUTO_INCREMENT PRIMARY KEY,
    type_name           VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE computer_set (
    computer_id       INT AUTO_INCREMENT PRIMARY KEY,
    room_id           INT NOT NULL,
    computer_type_id  INT NOT NULL,
    inventory_barcode VARCHAR(30) UNIQUE,
    serial_number     VARCHAR(50) UNIQUE,
    brand             VARCHAR(50),
    model             VARCHAR(50),
    purchase_date     DATE,
    date_added        DATE DEFAULT (CURRENT_DATE),
    remarks           VARCHAR(255),
    CONSTRAINT fk_computer_room FOREIGN KEY (room_id) REFERENCES room(room_id),
    CONSTRAINT fk_computer_type FOREIGN KEY (computer_type_id) REFERENCES computer_type(computer_type_id),
    CONSTRAINT chk_computer_id_present CHECK (inventory_barcode IS NOT NULL OR serial_number IS NOT NULL)
);

CREATE TABLE component (
    component_id        INT AUTO_INCREMENT PRIMARY KEY,
    computer_id           INT NULL,
    component_type_id     INT NOT NULL,
    room_id                INT NOT NULL,
    inventory_barcode       VARCHAR(30) UNIQUE,
    serial_number            VARCHAR(50) UNIQUE,
    brand                     VARCHAR(50),
    model                     VARCHAR(50),
    status_id                 INT NOT NULL,
    last_checked               DATE,
    remarks                     VARCHAR(255),
    CONSTRAINT fk_component_computer FOREIGN KEY (computer_id) REFERENCES computer_set(computer_id) ON DELETE SET NULL,
    CONSTRAINT fk_component_type     FOREIGN KEY (component_type_id) REFERENCES component_type(component_type_id),
    CONSTRAINT fk_component_room     FOREIGN KEY (room_id) REFERENCES room(room_id),
    CONSTRAINT fk_component_status   FOREIGN KEY (status_id) REFERENCES status(status_id),
    CONSTRAINT chk_component_id_present CHECK (inventory_barcode IS NOT NULL OR serial_number IS NOT NULL)
);

CREATE TABLE printer (
    printer_id        INT AUTO_INCREMENT PRIMARY KEY,
    room_id           INT NOT NULL,
    inventory_barcode VARCHAR(30) UNIQUE,
    serial_number     VARCHAR(50) UNIQUE,
    brand             VARCHAR(50),
    model             VARCHAR(50),
    printer_type      VARCHAR(30),
    status_id         INT NOT NULL,
    purchase_date     DATE,
    remarks           VARCHAR(255),
    CONSTRAINT fk_printer_room   FOREIGN KEY (room_id) REFERENCES room(room_id),
    CONSTRAINT fk_printer_status FOREIGN KEY (status_id) REFERENCES status(status_id),
    CONSTRAINT chk_printer_id_present CHECK (inventory_barcode IS NOT NULL OR serial_number IS NOT NULL)
);

CREATE TABLE maintenance_log (
    log_id              INT AUTO_INCREMENT PRIMARY KEY,
    item_type           ENUM('Computer','Component','Printer') NOT NULL,
    item_id              INT NOT NULL,
    date_reported         DATE NOT NULL,
    reported_by           VARCHAR(50),
    issue_description     VARCHAR(255),
    date_resolved         DATE,
    action_taken           VARCHAR(255),
    resolved_status_id     INT,
    CONSTRAINT fk_log_status FOREIGN KEY (resolved_status_id) REFERENCES status(status_id)
);

-- SEED DATA (edit to match your real campus) --
INSERT INTO library (library_name, building_desc) VALUES
('Old Library', 'Main Campus - Original Building'),
('New Library', 'Main Campus - New Wing');

INSERT INTO room_type (type_name) VALUES
('Staff Office'), ('Study Room'), ('Computer Lab'), ('Reading Room');

INSERT INTO status (status_name) VALUES
('Functioning'), ('Not Functioning'), ('Under Repair'), ('Disposed');

INSERT INTO component_type (type_name) VALUES
('System Unit'), ('Monitor'), ('Keyboard'), ('Mouse'), ('UPS'), ('Speakers'), ('Webcam');

INSERT INTO computer_type (type_name) VALUES
('Desktop Tower'), ('All-in-One (AIO)'), ('Laptop'), ('Thin Client');

INSERT INTO room (library_id, room_type_id, room_name, floor_no) VALUES
(1, 1, 'Circulation Office', 'Ground Floor'),
(1, 2, 'Study Room 1', 'First Floor'),
(2, 3, 'Computer Lab A', 'Ground Floor'),
(2, 1, 'Librarian Office', 'First Floor');

-- REPORTING VIEWS --
CREATE VIEW vw_computer_overall_status AS
SELECT
    cs.computer_id,
    COALESCE(cs.inventory_barcode, cs.serial_number) AS computer_identifier,
    ct2.type_name AS computer_type,
    l.library_name, r.room_name, rt.type_name AS room_type,
    CASE
        WHEN SUM(CASE WHEN s.status_name = 'Not Functioning' THEN 1 ELSE 0 END) > 0 THEN 'Not Functioning'
        WHEN SUM(CASE WHEN s.status_name = 'Under Repair' THEN 1 ELSE 0 END) > 0 THEN 'Under Repair'
        ELSE 'Functioning'
    END AS overall_status
FROM computer_set cs
JOIN room r ON cs.room_id = r.room_id
JOIN library l ON r.library_id = l.library_id
JOIN room_type rt ON r.room_type_id = rt.room_type_id
JOIN computer_type ct2 ON cs.computer_type_id = ct2.computer_type_id
LEFT JOIN component c ON c.computer_id = cs.computer_id
LEFT JOIN status s ON c.status_id = s.status_id
GROUP BY cs.computer_id, computer_identifier, ct2.type_name, l.library_name, r.room_name, rt.type_name;

CREATE VIEW vw_faulty_components AS
SELECT
    l.library_name, r.room_name,
    COALESCE(cs.inventory_barcode, cs.serial_number, '(standalone/spare)') AS attached_to_computer,
    ct.type_name AS component,
    COALESCE(c.inventory_barcode, c.serial_number) AS component_identifier,
    c.brand, c.model, s.status_name, c.last_checked, c.remarks
FROM component c
JOIN room r ON c.room_id = r.room_id
JOIN library l ON r.library_id = l.library_id
JOIN component_type ct ON c.component_type_id = ct.component_type_id
JOIN status s ON c.status_id = s.status_id
LEFT JOIN computer_set cs ON c.computer_id = cs.computer_id
WHERE s.status_name IN ('Not Functioning', 'Under Repair');

CREATE VIEW vw_printer_status AS
SELECT
    l.library_name, r.room_name,
    COALESCE(p.inventory_barcode, p.serial_number) AS printer_identifier,
    p.brand, p.model, p.printer_type, s.status_name, p.remarks
FROM printer p
JOIN room r ON p.room_id = r.room_id
JOIN library l ON r.library_id = l.library_id
JOIN status s ON p.status_id = s.status_id;

CREATE VIEW vw_spare_components AS
SELECT
    l.library_name, r.room_name AS stored_in, ct.type_name AS component,
    COALESCE(c.inventory_barcode, c.serial_number) AS component_identifier,
    c.brand, c.model, s.status_name, c.remarks
FROM component c
JOIN room r ON c.room_id = r.room_id
JOIN library l ON r.library_id = l.library_id
JOIN component_type ct ON c.component_type_id = ct.component_type_id
JOIN status s ON c.status_id = s.status_id
WHERE c.computer_id IS NULL;

CREATE VIEW vw_room_equipment_summary AS
SELECT
    l.library_name, r.room_name, rt.type_name AS room_type,
    COUNT(DISTINCT cs.computer_id) AS total_computers,
    COUNT(DISTINCT p.printer_id) AS total_printers
FROM room r
JOIN library l ON r.library_id = l.library_id
JOIN room_type rt ON r.room_type_id = rt.room_type_id
LEFT JOIN computer_set cs ON cs.room_id = r.room_id
LEFT JOIN printer p ON p.room_id = r.room_id
GROUP BY l.library_name, r.room_name, rt.type_name;

CREATE TABLE users (
    user_id         INT AUTO_INCREMENT PRIMARY KEY,
    username        VARCHAR(50) NOT NULL UNIQUE,
    hashed_password VARCHAR(255) NOT NULL,
    role            ENUM('admin','user') NOT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE maintenance_log
DROP COLUMN reported_by,
ADD COLUMN reported_by_user_id INT NULL,
ADD CONSTRAINT fk_log_reported_by
    FOREIGN KEY (reported_by_user_id) REFERENCES users(user_id)
    ON DELETE SET NULL;