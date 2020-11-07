import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();

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
