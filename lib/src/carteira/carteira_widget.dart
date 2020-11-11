import 'package:flutter/material.dart';

class CarteiraWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Carteira'),
            backgroundColor: Color(0xFF102345),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            )),
        body: Column(children: <Widget>[
          Container(
              //lugar que mostra o dinheiro
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Color(0xFF90CAF9),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
              ),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Text('Seu saldo total é de...',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text('',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ])
                  ],
                ),
              ])),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              color: Color(0xFF90CAF9),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add_rounded),
                      onPressed: () {},
                    ),
                    IconButton(
                        icon: Icon(Icons.credit_card_outlined),
                        onPressed: null),
                    Text('Adicionar cartão!',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ])
                ],
              ),
            ]),
          )
        ]));
  }
}
