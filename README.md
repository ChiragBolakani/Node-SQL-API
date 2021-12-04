# Node-SQL-API

## Installation
- Run the command below in order to clone this repository and install the required npm modules
```
git clone https://github.com/ChiragBolakani/Node-SQL-API.git
cd Node-SQL-API
npm install
```

## Configuration
- The following values are to be provided in the .env file for configuration
```
DB_HOST = DB_HOST
DB_USER = DB_USER
DB_NAME = DB_NAME
DB_PASS = DB_PASS
TRANSPORTER_USER = user@mail.com
TRANSPORTER_PASS = userpas@mail.com
TRANSPORTER_SENDER = user@mail.com
```

## Run
- Run the command below to start the Server with Nodemon

```
    npm run server
```

## SQL Tables and Postman Collection
- The SQL tables can be found [here](./Tables)
- Postman collection - [Collection](./Postman)
   
# REST API

## Get All Posts

### Request
`GET http://localhost:3000/posts`
- This route also takes in additional query parameters such as `limit`and `offset` to enable pagination.
- For example :- 
`GET http://localhost:3000/posts?limit=5&offset=0`

### Response
```json
{
    "status": 200,
    "data": [
        {
            "authorID": 1,
            "authorFirstName": "John",
            "authorLastName": "Do",
            "authorEmail": "JohnDoe@gmail.com",
            "postID": 1,
            "postTitle": "MongoDB Tutorial",
            "postDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit."
        },
        {
            "authorID": 3,
            "authorFirstName": "John",
            "authorLastName": "Wick",
            "authorEmail": "JohnWick@mail.com",
            "postID": 26,
            "postTitle": "Python Tutorial",
            "postDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit."
        }
    ]
}
```

## Get Posts by authorID

### Request
`GET http://localhost:3000/authors/1/posts/`

### Response
```json
{
  "status": 200,
  "data": [
    {
      "postID": 1,
      "postTitle": "MongoDB Tutorial",
      "postDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.",
      "authorID": 1
    },
    {
      "postID": 31,
      "postTitle": "Kotlin Tutorial",
      "postDescription": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.",
      "authorID": 1
    }
  ]
}
```

## Create Post

### Request
`POST http://localhost:3000/authors/posts/`

#### Request Body
```json
{
"title" : "NodeJS Tutorial",
"description" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.",
"authorID" : 1
}
```
### Response
```json
{
  "status": 200,
  "data": {
    "id": 48,
    "title": "NodeJS Tutorial",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.",
    "authorID": 1,
    "message": "Successfully inserted"
  }
}
```

## Update Post

### Request 
`PUT http://localhost:3000/authors/1/posts/1`

#### Request Body

```json

{
"title" : "MongoDB Tutorial",
"description" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit."
}
```

### Response
```json
{
  "status": 200,
  "data": {
    "id": "1",
    "title": "MongoDB Tutorial",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mauris commodo quis imperdiet massa. Elit at imperdiet dui accumsan sit.",
    "message": "successfully updated"
  }
}
```

## Delete Post

### Request 
`DELETE http://localhost:3000/author/1/posts/33`

### Response
```json
{
  "status": 200,
  "message": "Post was deleted successfully!"
}
```
