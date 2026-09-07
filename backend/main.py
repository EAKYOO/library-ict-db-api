from enum import Enum
from datetime import datetime, timedelta, time
from uuid import UUID
import random
from fastapi import FastAPI, Header, Query,Path,Body,Cookie, Response, HTTPException, status, Depends
from fastapi.responses import JSONResponse, RedirectResponse
from fastapi.testclient import TestClient
from pydantic import BaseModel, AfterValidator, EmailStr, Field, HttpUrl
from typing import Annotated, Literal
from fastapi.security import OAuth2PasswordBearer

class Item(BaseModel):
    name: str
    item_id: str
    description: str | None = None
    price: float
    tax: float | None = None
    images: list[Image] | None = None
    model_config = {
       "json_schema_extra": {
            "examples": [
                {
                    "name": "Foo",
                    "description": "A very nice Item",
                    "price": 35.4,
                    "tax": 3.2,
                }
            ]
        }
    }

class Items(BaseModel):
    name: str
    item_id: str
    description: str | None = None
    price: float
    tax: float | None = None

class UserIn7(BaseModel):
    username: str
    password: str
    email: EmailStr
    full_name: str | None = None


class UserOut7(BaseModel):
    username: str
    email: EmailStr
    full_name: str | None = None


class UserInDB(BaseModel):
    username: str
    hashed_password: str
    email: EmailStr
    full_name: str | None = None

class BaseUser(BaseModel):
    username: str
    email: EmailStr
    full_name: str | None = None

class UserOut(BaseUser):
    username: str
    email: EmailStr
    full_name: str | None = None


class UserIn(BaseUser):
    password: str

class CommonHeaders(BaseModel):
    host: str
    save_data: bool
    if_modified_since: str | None = None
    traceparent: str | None = None
    x_tag: list[str] = []
    
class Cookies(BaseModel):
    model_config = {"extra": "forbid"} #in Rare case special use cases probably not very common you can forbid any extra fields in the request body by setting the extra attribute to "forbid" in the model_config. This means that if the client sends any additional fields in the request body that are not defined in the Cookies model, FastAPI will raise a validation error and return a 422 Unprocessable Entity response.

    session_id: str
    facebook_tracker: str | None = None
    google_tracker: str | None = None

class Image(BaseModel):
    url: HttpUrl
    name: str

class Akyoo(BaseModel):
    name: str
    fourth: str = "FactorTx"
    side: str = "Councy"

class FilterParams(BaseModel):
    limit: int = Field(100, gt=0, le=100)
    offset: int = Field(0, ge=0)
    order_by: Literal["created_at", "updated_at"] = "created_at"
    tags: set[str] = set() # we firstly used list for tags but as soon we realized that, tags have to be unique we changed it to set, since set is a collection of unique elements. This means that if the client sends duplicate tags in the request, they will be automatically removed by the set data structure, and only unique tags will be stored in the tags attribute of the FilterParams model.

class User(BaseModel):
    username: str
    full_name: str | None = None

class Offer(BaseModel):
    name: str
    description: str | None = None
    price: float
    items: list[Item]


class ModelName(str, Enum):
    alexnet = "alexnet"
    resnet = "resnet"
    lenet = "lenet"

class Thing(BaseModel):
    name: str
    description: str | None = None
    price: float
    tax: float = 10.5
    tags: list[str] = []

things = {
    "foo": {"name": "Foo", "price": 50.2},
    "bar": {"name": "Bar", "description": "The bartenders", "price": 62, "tax": 20.2},
    "baz": {"name": "Baz", "description": None, "price": 50.2, "tax": 10.5, "tags": []},
}

Items_data= [
        {"name": "Item 1", "item_id": "43", "description": "This is item 1", "price": 10.0, "tax": 1.0},
        {"name": "Item 2", "item_id": "44", "description": "This is item 2", "price": 20.0, "tax": 2.0},
        {"name": "Item 3", "item_id": "45", "description": "This is item 3", "price": 30.0, "tax": 3.0},
    ]


class UserIn7(BaseModel):
    username: str
    password: str
    email: EmailStr
    full_name: str | None = None


class UserOut7(BaseModel):
    username: str
    email: EmailStr
    full_name: str | None = None


class UserInDB(BaseModel):
    username: str
    hashed_password: str
    email: EmailStr
    full_name: str | None = None

app = FastAPI()

client = TestClient(app)

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")

fake_items_db = [{"item_name": "Foo"}, {"item_name": "Bar"}, {"item_name": "Baz"}]
data = {
    "isbn-9781529046137": "The Hitchhiker's Guide to the Galaxy",
    "imdb-tt0371724": "The Hitchhiker's Guide to the Galaxy",
    "isbn-9781439512982": "Isaac Asimov: The Complete Stories, Vol. 2",
}

@app.get("/users/{user_id}/items/{item_id}") #multiple path declaration in a single path operation is possible, and the order of the parameters dont matter
async def read_user_item(
    user_id: int, item_id: str, q: str | None = None, short: bool = False
):
    item = {"item_id": item_id, "owner_id": user_id}
    if q:
        item.update({"q": q})
    if not short:
        item.update(
            {"description": "This is an amazing item that has a long description"}
        )
    return item


@app.get("/users/me")
async def read_user_me():
    return {"user_id": "the current user"}
                                                    #these two function are to appear in this order since the order of the path operations matters. If you put the /users/me path operation after the /users/{user_id} path operation, FastAPI will interpret "me" as a user_id and will not match the /users/me path operation. Therefore, it is important to define the more specific path operation first, so that it takes precedence over the more general one.

@app.get("/users/{user_id}")
async def read_user(user_id: Annotated[str, Depends(oauth2_scheme)]):#the oauth2_scheme is a callable that will be called by FastAPI to get the value of the token from the request. The Depends function is used to declare a dependency on the oauth2_scheme callable, which means that FastAPI will call the oauth2_scheme function and pass the result as an argument to the read_user function. This allows you to access the token value in your path operation function and use it for authentication or authorization purposes.
    return {"user_id": user_id}

@app.get("/models/{model_name}")
async def get_model(model_name: ModelName):# you can access the enum value by using model_name.value or ModelName.alexnet.value
    if model_name is ModelName.alexnet:
        return {"model_name": model_name, "message": "Deep Learning FTW!"}

    if model_name.value == "lenet":
        return {"model_name": model_name, "message": "LeCNN all the images"}

    return {"model_name": model_name, "message": "Have some residuals"}

@app.get("/files/{file_path:path}") #the openapi specification does not define the path declartaionfor the path parameter,but through fast api you can define a path parameter that captures the entire path after the /files/ prefix. The path parameter is defined using the {file_path:path} syntax, which tells FastAPI to capture everything after /files/ as a single string and pass it to the read_file function as the file_path argument.and fastapi wont validate the file_path parameter, so you can pass any string as the file path, including special characters and slashes.
async def read_file(file_path: str):
    return {"file_path": file_path}


@app.get("/items1/")
async def read_item(skip: int = 0, limit: int = 10):# adding a default value makes the variable not required in the request, and if the client does not provide a value for that variable, the default value will be used instead. In this case, if the client does not provide a value for skip or limit, they will default to 0 and 10, respectively.
    return fake_items_db[skip : skip + limit]

@app.post("/items2/")
async def update_item(item: Item):
    item_dict = item.model_dump()# you change the item from a pyadantic model to a dictionary using the model_dump() method. This allows you to manipulate the data more easily, such as adding new fields or modifying existing ones.
    if item.tax is not None:
        price_with_tax = item.price + item.tax
        item_dict.update({"price_with_tax": price_with_tax})
    return item_dict

@app.put("/items3/{item_id}")
async def update_item(item_id: Annotated[int, Path(title="Item ID")], item: Item):#the item.model_dump() method returns a dictionary representation of the item object created from the Item model. The ** operator is used to unpack the dictionary and merge it with the item_id into a single dictionary that is returned as the response.
    return {"item_id": item_id, **item.model_dump()}# **item.model_dump() is  used to unpack the dictionary returned by item.model_dump() and merge it with the item_id into a single dictionary that is returned as the response.

#use of AfterValidator to validate the id parameter in the read_data endpoint
def check_valid_id(id: str):
    if not id.startswith(("isbn-", "imdb-")):
        raise ValueError('Invalid ID format, it must start with "isbn-" or "imdb-"')
    return id

@app.get("/data/")
async def read_data(
    id: Annotated[str | None, AfterValidator(check_valid_id)] = None, #applying custom validation using the Aftervalidator
):
    if id:
        item = data.get(id)
    else:
        id, item = random.choice(list(data.items())) #creates a list of tuples from the dictionary items and uses the random.choice to pick any , then unpacks the tuple into id and item variables. This allows the endpoint to return a random item from the data dictionary when no id is provided in the request.
    return {"id": id, "name": item}

@app.get("/results/")
async def read_items(
    q: Annotated[
        str | None,
        Query(    #the Query allows to add validations and metadata to the query parameter, such as min_length, max_length, pattern, and description. In this case, the q parameter is optional (str | None), and it has a minimum length of 3 characters, a maximum length of 50 characters, and a regex pattern that requires it to be "fixedquery". The deprecated=True argument indicates that this query parameter is deprecated and should not be used in future requests.
            alias="item-query",
            title="Query string",
            description="Query string for the items to search in the database that have a good match",
            min_length=3,
            max_length=50,
            pattern="^fixedquery$",
            deprecated=True,
        ),
    ] = None,
):
    results = {"items": [{"item_id": "Foo"}, {"item_id": "Bar"}]}
    if q:
        results.update({"q": q})
    return results

# GET /items/
# Reads query params into FilterParams (limit, offset, order_by, tags)
# FastAPI validates them using Pydantic and returns them as an object
@app.get("/fields/")
async def read_items(filter_query: Annotated[FilterParams, Query()]):
    return filter_query  

#declaring path parameters, query paramters and body parameters together
@app.put("/items5/{item_id}")
async def create_item(
    item_id: Annotated[int, Path(title="The ID of the item to get", ge=0, le=1000)],
    q: str | None = None,
    item: Item | None = None,
):
    results = {"item_id": item_id}
    if q:
        results.update({"q": q})
    if item:
        results.update({"item": item})
    return results


@app.put("/items4/{item_id}")
async def update_item(
    item_id: int, item: Item, user: User, importance: Annotated[int, Body()]
):
    results = {"item_id": item_id, "item": Item, "user": User, "importance": importance}
    return results

@app.put("/items6/{item_id}")
async def update_item(item_id: int, item: Annotated[Image, Body(embed=True, examples=[{"HttpUrl": "https://example.com/image.jpg", "name":"Jason"}])]):#the embed=True argument tells FastAPI to expect the item data to be wrapped in a JSON object with a single key named "item". This is useful when you want to send additional data along with the item data in the request body, such as metadata or other related information. By embedding the item data in a JSON object, you can include additional fields in the request body without conflicting with the item data.
    results = {"item_id": item_id, "item": item}
    return results

@app.put("/items7/{item_id}")
async def update_item(item_id: int, item: Item):
    results = {"item_id": item_id, "item": item}
    return results

@app.post("/offers/")
async def create_offer(offer: Offer):
    return offer

@app.post("/images/multiple/")
async def create_multiple_images(images: list[Image]):
    return images

@app.post("/index-weights/")
async def create_index_weights(weights: dict[int, float]):
    return weights

@app.put("/items8/{item_id}")
async def read_items(
    FactorTx: Annotated[Akyoo,Query()],
    item_id: UUID,
    start_datetime: Annotated[datetime, Body()],
    end_datetime: Annotated[datetime, Body()],
    process_after: Annotated[timedelta, Body()],
    repeat_at: Annotated[time | None, Body()] = None,

    
):
    start_process = start_datetime + process_after
    duration = end_datetime - start_process
    return {
        "item_id": item_id,
        "start_datetime": start_datetime,
        "end_datetime": end_datetime,
        "process_after": process_after,
        "repeat_at": repeat_at,
        "start_process": start_process,
        "duration": duration,
        "Myname": FactorTx.name,
        "TrueLove": FactorTx.side
    }

@app.get("/items9/")
async def read_items(ads_id: Annotated[str | None, Cookie()] = None):
    return {"ads_id": ads_id}

@app.get("/items10/")
async def read_items(user_agent: Annotated[str | None, Header()] = None):
    return {"User-Agent": user_agent}

@app.get("/items11/")
async def read_items(cookies: Annotated[Cookies, Cookie()]):
    return cookies

@app.get("/items12/")
async def read_items(headers: Annotated[CommonHeaders, Header()]):
    return headers

@app.post("/items13/")
async def create_item(item: Item) -> Item:
    return item

@app.get("/items14/")
async def read_items() -> list[Item]:
    return [
        Item(name="Portal Gun", price=42.0),
        Item(name="Plumbus", price=32.0),
    ]

@app.post("/user/", response_model=UserOut)
async def create_user(user: UserIn) -> BaseUser:
    return user

@app.get("/portal", response_model=None)
async def get_portal(teleport: bool = False) -> Response | dict:# if you dont include the response_model=None fastapi will try to create a pydantic model for the response and the dict too but since response is not a pyadantic model that will raise an error and the api wont even start
    if teleport:# this example conveys the idea of return types being a pydantic model and not , also the union btn the responce pydantic and non pydantic model leading to an error if pydantic model creation is not diasabled in the response_model argument of the path operation decorator. The response_model argument is used to specify the expected response model for the endpoint, and if it is not set to None, FastAPI will try to create a pydantic model for the response based on the return type of the function. In this case, since the return type is a union of Response and dict, FastAPI will raise an error when trying to create a pydantic model for the response. To avoid this error, we can set response_model=None in the path operation decorator, which tells FastAPI not to create a pydantic model for the response.
        return RedirectResponse(url="https://")
    return {"message": "Here's your interdimensional portal."}

@app.get("/portal1")
async def get_portal(teleport: bool = False) -> Response:
    if teleport:
        return RedirectResponse(url="https://")
    return JSONResponse(content={"message": "Here's your interdimensional portal."})

@app.get("/things1/{thing_id}", response_model=Thing, response_model_exclude_unset=True)# response_model_exclude_unset=True, the fields that were not set with values in the request body will be excluded from the response.
async def read_thing1(thing_id: str):                                                    #also there are 1:response_modele_exclude_defaults=True, response_model_exclude_none=True, response_model_include={"name", "description"}, response_model_exclude={"tax", "tags"} which can be used to include or exclude specific fields from the response model based on their default values, None values, or a set of field names.
    return things[thing_id]
#But it is still recommended to use the ideas above, using multiple classes, instead of these parameters.☝️
#The idea of multiple classes means using the diffrent classes, and inhereitance to model the data that will be returned in the response.

@app.get(
    "/things2/{thing_id}/name",
    response_model=Thing,
    response_model_include={"name", "description"},
)#The syntax {"name", "description"} creates a set with those two values.
#It is equivalent to set(["name", "description"]).
#If you forget to use a set and use a list or tuple instead, FastAPI will still convert it to a set and it will work correctly:
#eg:response_model_include=["name", "description"], or  response_model_exclude=["tax"] then ☝️ applies.
async def read_thing_name(thing_id: str):
    return things[thing_id]


@app.get("/things3/{thing_id}/public", response_model=Thing, response_model_exclude={"tax"})
async def read_thing_public_data(thing_id: str):
    return things[thing_id]
# Use the path operation decorator's parameter response_model to define response models and especially to ensure private data is filtered out.
# Use response_model_exclude_unset to return only the values explicitly set.

def fake_password_hasher(raw_password: str):
    return "supersecret" + raw_password


def fake_save_user(user_in: UserIn7):
    hashed_password = fake_password_hasher(user_in.password)
    user_in_db = UserInDB(**user_in.model_dump(), hashed_password=hashed_password)
    print("User saved! ..not really")
    return user_in_db


@app.post("/user7/", response_model=UserOut7, status_code=status.HTTP_201_CREATED)
async def create_user(user_in: UserIn7):
    user_saved = fake_save_user(user_in)
    return user_saved

@app.get("/items/{item_id}", tags=["Items"])
async def read_item(item_id: str):
    for item in Items_data:
        if item["item_id"] == item_id:
            return {
                "message": "Item found",
                "item": item["description"],
                "price": item["price"],
                "tax": item["tax"]
            }
    raise HTTPException(status_code=404, detail="Item not found", headers  = {"fecade":"Implausible"})

async def common_paramenters (q: str | None = None, skip: int = 0, limit: int = 100):
    return {"q": q, "skip": skip, "limit": limit}

@app.get("users" , tags=["shelbys"])
async def read_users(commons: Annotated[dict, Depends(common_paramenters)]):
    return commons