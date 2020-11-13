import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ipersonal/servicos/autenticacao_fire.dart';
import 'package:ipersonal/src/carteira_widget.dart';
import 'package:ipersonal/src/home/home_widget.dart';
import 'package:ipersonal/src/wrapper.dart';
import 'package:provider/provider.dart';
import 'model/usuarios.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        home: HomeWidget(),
      ),
    );
  }
}
