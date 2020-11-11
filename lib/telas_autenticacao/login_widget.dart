import 'package:flutter/material.dart';
import 'package:ipersonal/loadingAnimacao/loading_widget.dart';
import 'package:ipersonal/servicos/autenticacao_fire.dart';
import 'package:ipersonal/cores/cores_config.dart';

class LoginWidget extends StatefulWidget {
  final Function trocarTela;
  LoginWidget({this.trocarTela});

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final AutenticacaoFire _autenticacao = AutenticacaoFire();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  bool verSenha = true;

  //Textos que serão digitados.
  String email = "";
  String senha = "";
  String erro = "";

  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: cores.corPadrao,
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
                          Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.01)),
                          Container(
                            width: constraints.maxWidth,
                            child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? "Insira seu email" : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                              onTap: () => erro = "",
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Email",
                                icon: Icon(
                                  Icons.email,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.01)),
                          Container(
                            width: constraints.maxWidth,
                            child: TextFormField(
                              validator: (val) =>
                                  val.length < 8 ? "Senha invalida" : null,
                              onChanged: (val) {
                                setState(() => senha = val);
                              },
                              onTap: () => erro = "",
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
                                        setState(() {
                                          verSenha = !verSenha;
                                        });
                                      })),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.01)),
                          Container(
                            width: constraints.maxWidth,
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Esqueceu a senha ?",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: constraints.maxHeight * 0.04,
                              child: Text(
                                erro,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 14),
                              )),
                          Container(
                            width: constraints.maxWidth * 0.8,
                            height: 40,
                            decoration: BoxDecoration(
                              color: cores.corPadrao,
                              borderRadius:
                                  BorderRadius.all(Radius.circular((20))),
                            ),
                            child: FlatButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  setState(() => loading = true);
                                  dynamic result = await _autenticacao
                                      .loginComEmailSenha(email, senha);
                                  if (result == null) {
                                    setState(() {
                                      erro = 'Email ou Senha invalida';
                                      loading = false;
                                    });
                                  }
                                }
                              },
                              child: Text(
                                "ENTRAR",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: constraints.maxHeight * 0.1,
                            width: constraints.maxWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Não possui uma conta?",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                                InkWell(
                                  onTap: () {
                                    widget.trocarTela();
                                  },
                                  child: Text(
                                    " Cadastre-se",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Divider(
                                    color: Colors.blueGrey,
                                    endIndent: 10,
                                    indent: 5,
                                  ),
                                ),
                                Text(
                                  "OU",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.blueGrey,
                                    endIndent: 5,
                                    indent: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.03)),
                          Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/logo_facebook.png",
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(padding: EdgeInsets.only(left: 15)),
                                Text(
                                  "Entrar com o Facebook",
                                  style: TextStyle(
                                      color: Colors.blue[900], fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.04)),
                          Container(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/logo_google.png",
                                  width: 30,
                                  height: 30,
                                ),
                                Padding(padding: EdgeInsets.only(right: 12)),
                                Text(
                                  "Entrar com o Google",
                                  style: TextStyle(
                                      color: Colors.blue[900], fontSize: 15),
                                ),
                                Padding(padding: EdgeInsets.only(right: 15)),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.03)),
                          Divider(
                            color: Colors.blueGrey,
                            endIndent: 5,
                            indent: 10,
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
