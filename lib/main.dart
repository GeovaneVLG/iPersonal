import 'package:flutter/material.dart';
import 'package:ipersonal/src/home/home_widget.dart';
import 'package:ipersonal/src/splash/splash_widget.dart';

import 'src/pagamento/pagamento_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PagamentoWidget(),
    );
  }
}
