import 'package:ipersonal/src/model/usuarios/usuarios.dart';

class Clientes extends Usuarios {
  Clientes(String uid, String nome, String email, String telefone,
      String endereco, String datanascimento)
      : super(uid, nome, email, telefone, endereco, datanascimento);
}
