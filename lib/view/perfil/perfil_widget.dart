import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';
import 'package:ipersonal/model/usuarios.dart';
import 'package:ipersonal/services/autenticacao_fire.dart';
import 'package:ipersonal/view/wrapper.dart';
import 'package:provider/provider.dart';
import 'dados_pessoais_widget.dart';

class PerfilWidget extends StatefulWidget {
  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  bool a = false;
  CoresConfig cores = new CoresConfig();
  final AutenticacaoFire _autenticacao = AutenticacaoFire();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Usuarios>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: cores.corPadrao,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(300, 30),
                  bottomLeft: Radius.elliptical(300, 30),
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey[500],
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        child: Container(
                          width: constraints.maxHeight * 0.5,
                          height: constraints.maxHeight * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: cores.corPadrao),
                          child: Image.asset(
                            'assets/images/imgperfil.jpg',
                            /* user.getFoto().isEmpty
                                ? "assets/images/imgperfil.jpg"
                                : user.getFoto(), */
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.1),
                        child: Text(
                          user.getNome(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: a
                  ? DadosPesoaisWidget()
                  : LayoutBuilder(
                      builder: (context, constraints2) {
                        return ListView(
                          padding: EdgeInsets.only(
                              top: constraints2.maxHeight * 0.0001),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "Dados pessoais",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              dense: true,
                              subtitle: Text("Editar seu perfil"),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.dehaze,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      a = !a;
                                    });
                                  }),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                "Atuação profissional",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              dense: true,
                              subtitle:
                                  Text("Mantenha atualizado seu curriculo"),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.work,
                                    size: 20,
                                  ),
                                  onPressed: () {}),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                "Formação",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              dense: true,
                              subtitle:
                                  Text("Mantenha atualizado seu curriculo"),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.account_balance,
                                    size: 20,
                                  ),
                                  onPressed: () {}),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                "Alterar senha",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              dense: true,
                              subtitle: Text("Crie uma senha nova"),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.lock,
                                    size: 20,
                                  ),
                                  onPressed: () {}),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                "Notificações",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              dense: true,
                              subtitle:
                                  Text("Ative e Desative as notificações"),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.speaker_notes,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                  onPressed: () {}),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                "FAQ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              dense: true,
                              subtitle: Text("Tire suas duvidas"),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.question_answer,
                                    size: 20,
                                  ),
                                  onPressed: () {}),
                            ),
                            Divider(),
                            ListTile(
                              title: Text(
                                "Sair",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              dense: true,
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.power_settings_new,
                                  color: Colors.red[300],
                                  size: 20,
                                ),
                                onPressed: () async {
                                  dynamic result =
                                      await _autenticacao.signOut();
                                  if (result != null) {
                                    return WrapperWidget();
                                  }
                                },
                              ),
                            ),
                          ],
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
