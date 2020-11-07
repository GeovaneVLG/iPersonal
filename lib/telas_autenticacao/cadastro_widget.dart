import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';
import 'package:ipersonal/loadingAnimacao/loading_widget.dart';
import 'package:ipersonal/servicos/autenticacao_fire.dart';
import 'package:ipersonal/src/home/home_widget.dart';

class CadastroWidget extends StatefulWidget {
  final Function trocarTela;
  CadastroWidget({this.trocarTela});

  @override
  _CadastroWidgetState createState() => _CadastroWidgetState();
}

class _CadastroWidgetState extends State<CadastroWidget> {
  final AutenticacaoFire _autenticacao = AutenticacaoFire();
  final _formKey = GlobalKey<FormState>();

  bool loading = false;
  bool verSenha = true;

  //Textos que serão digitados.
  String nome = "";
  String email = "";
  String senha = "";
  String erro = "";
  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();
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
                              validator: (val) =>
                                  val.length < 8 ? 'Minimo 8 digitos' : null,
                              onChanged: (val) {
                                setState(() => senha = val);
                              },
                              maxLength: 15,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              obscureText: verSenha,
                              keyboardType: TextInputType.number,
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
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5),
                                          topLeft: Radius.circular(5))),
                                  width: 10,
                                  height: 15,
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  width: 10,
                                  height: 15,
                                  color: Colors.grey,
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  width: 10,
                                  height: 15,
                                  color: Colors.grey,
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  width: 10,
                                  height: 15,
                                  color: Colors.grey,
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  width: 10,
                                  height: 15,
                                  color: Colors.grey,
                                  margin: EdgeInsets.only(right: 2),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(5),
                                          topRight: Radius.circular(5))),
                                  width: 10,
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
                                  dynamic result = await _autenticacao
                                      .cadastroComEmailSenha(email, senha);
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
