const mysql = require("mysql");

// Crear la conexion a la base de datos
const connection = mysql.createConnection({
    host: "127.0.0.1",
    port: "3306",
    user: "root",
    password: "",
    database: "hello_mysql",
});

// Funcion que utilizaremos para conectarnos a la base de datos, en caso de error
// nos enviara un mensaje.

let user = 'Blas'

function conectar() {
  connection.connect((error) => {
    if (error)
      return console.error(
        "Error al conectar a la base de datos: " + error.message
      );
    console.log("Conectado a MySQL correctamente.");
  });
}

// Funcion con la cual obtenemmos los datos de la tabla 'challenges'
function query() {
    connection.query(`SELECT * FROM users WHERE name = ?`, [user], (error, results) => {
        if (error)
      return console.error("Error al ejecutar la consulta: " + error.message);
    console.table(results);
  });
}

// Funcion para poder cerrar la conexion
function cerrarConexion() {
  connection.end((error) => {
    if (error)
      return console.error("Error al cerrar la conexion: " + error.message);
    console.log("Conexion a la base de datos cerrada correctamente.");
  });
}

conectar();
query();
cerrarConexion();