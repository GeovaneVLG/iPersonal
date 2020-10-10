import 'package:flutter/material.dart';

class PagamentoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _heigth = MediaQuery.of(context).size.height;
    Color corPadrao = Color.fromRGBO(29, 176, 176, 1);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Formas de Pagamento",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: corPadrao,
              ),
              onPressed: null),
        ),
        backgroundColor: Colors.white,
        body: Container());
  }
}
