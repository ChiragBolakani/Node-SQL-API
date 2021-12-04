# Node-SQL-API

## Installation
- Run the command below in order to install the required npm modules
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

## Setup
- Run the command below to start the Server with Nodemon

```
    npm run server
```
   
# REST API

## Get All Posts

### Request
`GET http://localhost:3000/posts`

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

More Documentation Incoming....
