import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';
import 'package:ipersonal/model/usuarios.dart';
import 'package:ipersonal/src/cadastro/cadastro_widget.dart';
import 'package:ipersonal/src/home/home_widget.dart';
import 'package:ipersonal/src/login/login_widget.dart';
import 'package:provider/provider.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Usuarios>(context);
    CoresConfig cores = new CoresConfig();

    if (user == null) {
      Future.delayed(Duration(seconds: 3)).then((_) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginWidget()),
            (Route<dynamic> route) => false);
      });
    } else {
      Future.delayed(Duration(seconds: 3)).then((_) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomeWidget()),
            (Route<dynamic> route) => false);
      });
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: cores.corPadrao,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Container()),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/logo_ipersonal.jpeg",
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.75,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Desenvolvido por iPersonal LTDA",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
