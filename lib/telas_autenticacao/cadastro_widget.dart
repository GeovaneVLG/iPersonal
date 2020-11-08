import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';
import 'package:ipersonal/loadingAnimacao/loading_widget.dart';
import 'package:ipersonal/servicos/autenticacao_fire.dart';

class CadastroWidget extends StatefulWidget {
  final Function trocarTela;
  CadastroWidget({this.trocarTela});

  @override
  _CadastroWidgetState createState() => _CadastroWidgetState();
}

class _CadastroWidgetState extends State<CadastroWidget> {
  final AutenticacaoFire _autenticacao = AutenticacaoFire();
  final _formKey = GlobalKey<FormState>();

  //Variavel para animação do loading.
  bool loading = false;

  //Variavel para visualizar senha digitada.
  bool verSenha = true;

  //Variaveis para verificar nivel da senha.
  bool nivelSenha0 = true;
  bool nivelSenha1 = false;
  bool nivelSenha2 = false;
  bool nivelSenha3 = false;
  bool nivelSenha4 = false;

  //Textos que serão digitados.
  String nome = "";
  String email = "";
  String senha = "";
  String erro = "";
  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();

    //Função que altera o nivel da senha.
    void verNivelSenha() {
      if (senha == '') {
        setState(() {
          nivelSenha0 = true;
          nivelSenha1 = false;
          nivelSenha2 = false;
          nivelSenha3 = false;
          nivelSenha4 = false;
        });
      } else if (senha.length <= 7 && senha.length > 1) {
        //Contém menos de 8 caracteres.
        setState(() {
          nivelSenha0 = false;
          nivelSenha1 = true;
          nivelSenha2 = false;
          nivelSenha3 = false;
          nivelSenha4 = false;
        });
      } else if (RegExp(r'[a-zA-Z]').hasMatch(senha) &&
          !RegExp(r'[0-9]').hasMatch(senha)) {
        //Contém apenas letras.
        setState(() {
          nivelSenha0 = false;
          nivelSenha1 = true;
          nivelSenha2 = false;
          nivelSenha3 = false;
          nivelSenha4 = false;
        });
      } else if (!RegExp(r'[a-zA-Z]').hasMatch(senha) &&
          RegExp(r'[0-9]').hasMatch(senha)) {
        //Contém apenas números.
        setState(() {
          nivelSenha0 = false;
          nivelSenha1 = true;
          nivelSenha2 = false;
          nivelSenha3 = false;
          nivelSenha4 = false;
        });
      } else if ((RegExp(r'(?=.*[a-z])(?=.*[0-9]).{8,}$').hasMatch(senha) &&
              !RegExp(r'[A-Z]').hasMatch(senha)) ||
          (RegExp(r'(?=.*[A-Z])(?=.*[0-9]).{8,}$').hasMatch(senha) &&
              !RegExp(r'[a-z]').hasMatch(senha))) {
        //Deve conter mais de 8 caracteres, letras e números.
        setState(() {
          nivelSenha0 = false;
          nivelSenha1 = true;
          nivelSenha2 = true;
          nivelSenha3 = false;
          nivelSenha4 = false;
        });
      } else if (RegExp(r'(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}$')
              .hasMatch(senha) &&
          !RegExp(r'[@#$!%*?&.,]').hasMatch(senha)) {
        //Deve conter mais de 8 caracteres, letras e números. Além de letras maiúsculas.
        setState(() {
          nivelSenha0 = false;
          nivelSenha1 = true;
          nivelSenha2 = true;
          nivelSenha3 = true;
          nivelSenha4 = false;
        });
      } else if ((RegExp(r'(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}$')
              .hasMatch(senha) &&
          RegExp(r'[@#$!%*?&.,]').hasMatch(senha))) {
        //Deve conter mais de 8 caracteres, letras , números , letras maiúsculas e caracter especial.
        setState(() {
          nivelSenha0 = false;
          nivelSenha1 = true;
          nivelSenha2 = true;
          nivelSenha3 = true;
          nivelSenha4 = true;
        });
      }
    }

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: cores.corPadrao,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: loading
                    ? LoadingWidget()
                    : Image.asset(
                        "assets/images/logo_ipersonal.jpeg",
                      ),
              ),
            ),
            Expanded(
              flex: 2,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: constraints.maxWidth * 0.97,
                    height: constraints.maxHeight,
                    padding: EdgeInsets.all(constraints.maxWidth * 0.05),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight:
                              Radius.circular(constraints.maxWidth * 0.15),
                          topLeft:
                              Radius.circular(constraints.maxWidth * 0.15)),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 20)),
                          SizedBox(
                            child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? "Insira seu nome" : null,
                              onChanged: (val) {
                                setState(() => nome = val);
                              },
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Nome",
                                icon: Icon(Icons.account_box),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          SizedBox(
                            child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? "Insira seu email" : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                              onTap: (() => erro = ""),
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Email",
                                icon: Icon(Icons.email),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          SizedBox(
                            child: TextFormField(
                              validator: (val) {
                                if (nivelSenha0) {
                                  return 'Insira uma senha!';
                                } else if (nivelSenha3 || nivelSenha4) {
                                  return null;
                                }
                                return 'Senha muito fraca!';
                              }
                              /* (val) =>
                                  val.length < 8 ? 'Minimo 8 digitos' : null */
                              ,
                              onChanged: (val) {
                                setState(() {
                                  senha = val;
                                  verNivelSenha();
                                });
                              },
                              maxLength: 15,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              obscureText: verSenha,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  counterText: "",
                                  labelText: "Senha",
                                  icon: Icon(Icons.vpn_key),
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        verSenha
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        verSenha = !verSenha;
                                      })),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: !nivelSenha0 && nivelSenha1
                                          ? Colors.redAccent
                                          : Colors.grey[200],
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5),
                                          topLeft: Radius.circular(5))),
                                  width: 20,
                                  height: 15,
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  width: 20,
                                  height: 15,
                                  color: !nivelSenha0 && nivelSenha2
                                      ? Colors.amberAccent
                                      : Colors.grey[200],
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  width: 20,
                                  height: 15,
                                  color: !nivelSenha0 && nivelSenha3
                                      ? Colors.greenAccent[400]
                                      : Colors.grey[200],
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: !nivelSenha0 && nivelSenha4
                                          ? Colors.green
                                          : Colors.grey[200],
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(5),
                                          topRight: Radius.circular(5))),
                                  width: 20,
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            child: Text(
                              erro,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 40,
                            decoration: BoxDecoration(
                              color: cores.corPadrao,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: FlatButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  setState(() => loading = true);
                                  dynamic result =
                                      await _autenticacao.cadastroComEmailSenha(
                                          email, senha, nome);
                                  if (result == null) {
                                    setState(() {
                                      erro = "Insira um email valido!";
                                      loading = false;
                                    });
                                  }
                                }
                              },
                              child: Text(
                                "CADASTRAR",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Já possui uma conta?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                                InkWell(
                                  onTap: () {
                                    widget.trocarTela();
                                  },
                                  child: Text(
                                    " Entrar",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
