const express = require("express");
const app = express();
const blogRoutes = require("./src/api/blog");

app.use(express.json());

//router
app.use("", blogRoutes);

//bodyparser
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.listen(process.env.PORT || 3000, () =>
  console.log("Server running on port 3000")
);
