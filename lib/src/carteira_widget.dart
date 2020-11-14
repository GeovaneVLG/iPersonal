import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';
import 'package:ipersonal/src/pagamento/pagamento_widget.dart';

class CarteiraWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: Text('Carteira',
                style: TextStyle(
                  color: Colors.white,
                )),
            backgroundColor: Color.fromRGBO(29, 176, 176, 1),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PagamentoWidget()),
                );
              },
            )),
        body: Column(children: <Widget>[
          //lugar que mostra o saldo
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 176, 176, 1),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Seu saldo total é de...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'e.g.: R\$ 546,98',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ])),
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03)),

          ///Adicionar cartão 01
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height / 12,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 20,
                        icon: Icon(Icons.add_circle_outline_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                          iconSize: 20,
                          icon: Icon(Icons.credit_card_rounded),
                          onPressed: null),
                      Text('Adicionar cartão!',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ]),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          ),

          ///Adicionar cartão 02
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height / 12,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 20,
                        icon: Icon(Icons.add_circle_outline_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                          iconSize: 20,
                          icon: Icon(Icons.credit_card_rounded),
                          onPressed: null),
                      Text('Adicionar cartão!',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ]),
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02)),

          ///Adicionar cartão 03
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height / 12,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 20,
                        icon: Icon(Icons.add_circle_outline_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                          iconSize: 20,
                          icon: Icon(Icons.credit_card_rounded),
                          onPressed: null),
                      Text('Adicionar cartão!',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ]),
          ),
        ]));
  }
}
