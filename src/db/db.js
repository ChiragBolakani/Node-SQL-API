const mysql = require("mysql");
const config = require("../config/config");

const connection = mysql.createConnection({
  host: config.dbHost,
  user: config.dbUser,
  password: config.dbPass,
  database: config.dbName,
});

connection.connect((err) => {
  if (err) {
    throw err;
  } else {
    console.log("Connected to DB");
  }
});

module.exports = connection;
