import 'package:flutter/material.dart';
import 'package:ipersonal/servicos/autenticacao_fire.dart';
import 'package:ipersonal/src/splash/splash_widget.dart';
import 'package:provider/provider.dart';

import 'model/usuarios.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Usuarios>.value(
      value: AutenticacaoFire().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashWidget(),
      ),
    );
  }
}
