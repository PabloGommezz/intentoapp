import 'package:mysql1/mysql1.dart';
void main()async{
  var settings = new ConnectionSettings(
    host:'localhost',
    port: 3306,
    user: 'root'
  );
  var conn = await MySqlConnection.connect (settings);
  await conn.query('CREATE DATABASE intentoapp');
  print("base de datos creada");
  await conn.query('USE intentoapp');
  print("conectado a intentoapp");

  await conn.query("""  CREATE TABLE IF NOT EXISTS jugadores (
    idUsuario INT NOT NULL AUTO-INCREMENT PRIMARY KEY,
    nombre VARCHAR (250) NOT NULL UNIQUE,
    equipo VARCHAR (150) NOT NULL.
    edad INT NOT NULL,
    enActivo BOOL NOT NULL
  )
  """);
}