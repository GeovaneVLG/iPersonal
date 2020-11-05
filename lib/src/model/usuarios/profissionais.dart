import 'package:ipersonal/src/model/usuarios/usuarios.dart';

class Profissionais extends Usuarios {
  //Atributos da classe Profissional.

  String _profissao;
  String _formacao;

  //Contrutor da classe.
  Profissionais(String uid, String nome, String email, String telefone,
      String endereco, String datanascimento)
      : super(uid, nome, email, telefone, endereco, datanascimento);

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
