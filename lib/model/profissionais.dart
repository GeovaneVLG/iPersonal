import 'package:ipersonal/model/usuarios.dart';

class Profissionais extends Usuarios {
  //Atributos da classe Profissional.

  String _profissao;
  String _formacao;

  //Contrutor da classe.
  Profissionais(String uid);

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
