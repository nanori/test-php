var express = require('express');
var app = express();

var PRINT_TEXT = process.env.PRINT_TEXT || "default"

app.get('/', function (req, res) {
  res.send("Hello World! " + PRINT_TEXT);
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
