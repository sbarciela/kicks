// ************ Require's ************
const express= require("express");
const path=require("path");
const methodOverride=require("method-override");
const session=require("express-session");
const cookie=require("cookie-parser");
const userLoggedMiddleware=require("./src/middlewares/userLoggedMiddleware");


// ************ express() - (don't touch) ************
const app = express();

// ************ Middlewares - (don't touch) ************
const publicPath= path.resolve("./public") 

app.use(express.static(publicPath));

app.use(express.urlencoded({ extended: false}));
app.use(express.json());
app.use(methodOverride("_method")); // Pasar poder pisar el method="POST" en el formulario por PUT y DELETE
app.use(session({
  secret:"secreto",
  resave:false,
  saveUninitialized:true
}));
app.use(cookie());//middleware de aplicacion global para las cookies
app.use(userLoggedMiddleware);//se debe ejecutar despues de inicializar session,(si hay cookie pasa al usuario a sesion muestra o no contenido, dependiendo si el usario esta logueado)



// ************ Template Engine - (don't touch) ************
app.set("view engine", "ejs");
app.set('views', './src/views');

// ************ WRITE YOUR CODE FROM HERE ************
app.listen(process.env.PORT || 3000,  ()=>{
  console.log("servidor corriendo en puerto 3000");
});

// ************ Route System require and use() ************
const rutasMain= require("./src/routes/main");
app.use("/" , rutasMain);

const rutasProductos= require("./src/routes/products");
app.use("/products" , rutasProductos);

const rutasUsers= require("./src/routes/users");
app.use("/users" , rutasUsers);

const rutasMarcas= require("./src/routes/marcas");
app.use("/marcas" , rutasMarcas);

// ************ API Routes System require and use() ************
/*const rutasApiProductos = require("./src/routes/api/apiProducts")
app.use("/api/products", rutasApiProductos)*/

const rutasApiUsuarios = require("./src/routes/api/apiUsers")
app.use("/api/users", rutasApiUsuarios)

// ************ DON'T TOUCH FROM HERE ************
// ************ catch 404 and forward to error handler ************

app.use((req, res, next) => next(createError(404)));

// ************ error handler ************
app.use((err, req, res, next) => {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.path = req.path;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error',{titulo:"¡OOPS! Página no encontrada"});
});

// ************ exports app - dont'touch ************

module.exports = app;





