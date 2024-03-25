//Dependencies
const cors = require("cors");
const express = require("express");

//Configuration
const app = express();

//Middleware
app.use(cors());
app.use(express.json());

//Routes
app.get("/", (req, res) => {
  res.send("shaboop");
});

//Export
module.exports = app;
