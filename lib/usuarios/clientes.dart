import 'package:ipersonal/usuarios/usuarios.dart';

class Clientes extends Usuarios {
  Clientes(String nome, String email, String telefone, String endereco,
      String datanascimento)
      : super(nome, email, telefone, endereco, datanascimento);
}

main() {
  var c = new Clientes("dsad", "dsfffffad", "dsgdad", "aaasad", "10/26/1236");

  c.setNome("Geovane");
  var e = c.getNome();
  c.setDatanascimento("02/05/2002");
  print(e);
  print(c.getDatanascimento());
}
