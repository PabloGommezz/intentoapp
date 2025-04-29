import 'package:mysql1/mysql1.dart';
import 'conectarDB.dart';
void main()async{
  try{
  ConectarDB.getConnection();
  print("Estas conectado correctamente a la Base de Datos");
  }catch(e){
    print(e);
    ConectarDB.getConnection();
  }
  
  

}