class Usuarios {
  final String uid;
  String _nome = "";
  String _email = "";
  String _telefone = "";
  String _endereco = "";
  String _datanascimento = "";

  Usuarios({this.uid});

  void setNome(String nome) {
    this._nome = nome;
  }

  String getNome() {
    return this._nome;
  }

  void setEmail(String email) {
    this._email = email;
  }

  String getEmail() {
    return this._email;
  }

  void setTelefone(String telefone) {
    this._telefone = telefone;
  }

  String getTelefone() {
    return this._telefone;
  }

  void setEndereco(String endereco) {
    this._endereco = endereco;
  }

  String getEndereco() {
    return this._endereco;
  }

  void setDatanascimento(String datanascimento) {
    this._datanascimento = datanascimento;
  }

  String getDatanascimento() {
    return this._datanascimento;
  }
}
