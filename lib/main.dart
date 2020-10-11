import 'package:flutter/material.dart';
import 'package:ipersonal/src/pagamento/pagamento_widget.dart';
import 'package:ipersonal/src/splash/splash_widget.dart';

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
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashWidget(),
    );
  }
}
