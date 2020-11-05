import 'package:ipersonal/usuarios/usuarios.dart';

class Profissionais extends Usuarios {
  //Atributos da classe Profissional.

  String _profissao;
  String _formacao;

  //Contrutor da classe.
  Profissionais(String nome, String email, String telefone, String endereco,
      String datanascimento)
      : super(nome, email, telefone, endereco, datanascimento);

  //Metodos SET e GET dos atributos PROFISSAO e FORMACAO.
  void setProfissao(String profissao) {
    this._profissao = profissao;
  }

  String getProfissao() {
    return this._profissao;
  }

  void setFormacao(String formacao) {
    this._formacao = formacao;
  }

  String getFormacao() {
    return this._formacao;
  }
}

main() {
  var c = new Profissionais("aaaa", "bbbb", "ccccc", "ddddd", "10/10/1999");

  c.setNome("Profissional");
  var e = c.getNome();
  c.setDatanascimento("02/05/2002");
  print(e);
  print(c.getDatanascimento());
}
