import 'package:mysql1/mysql1.dart';
class ConectarDB {
  static Future <MySqlConnection>getConnection()async{
    var settings = ConnectionSettings(
      host: 'localhost',
      port:3306,
      user:'root',
      db:'intentoapp'
    );
  
var conn=await MySqlConnection.connect(settings);
return conn;
}
}