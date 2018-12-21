const express=require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
const index=require("./routes/index");
const user=require("./routes/user")
const products=require("./routes/products")
const details=require("./routes/details")
const login=require("./routes/login")
const sign=require("./routes/sign")


var app=express();
var server = app.listen(3000);

app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static('public'));
app.use(session({
  secret: '128位随机字符串',
  resave: false,
  saveUninitialized: true,
}))

app.use("/index",index);
app.use("/user",user);
app.use("/products",products);
app.use("/details",details);
app.use("/login",login)
app.use("/sign",sign)
