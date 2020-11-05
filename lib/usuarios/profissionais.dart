import 'package:ipersonal/usuarios/usuarios.dart';

class Profissionais extends Usuarios {
  Profissionais(String nome, String email, String telefone, String endereco,
      String datanascimento)
      : super(nome, email, telefone, endereco, datanascimento);
}

main() {
  var c = new Profissionais("aaaa", "bbbb", "ccccc", "ddddd", "10/10/1999");

  c.setNome("Profissional");
  var e = c.getNome();
  c.setDatanascimento("02/05/2002");
  print(e);
  print(c.getDatanascimento());
}