import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';

class CarteiraWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            title: Text('Carteira',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                )),
            backgroundColor: Color.fromRGBO(29, 176, 176, 1),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp),
              onPressed: () {},
            )),
        body: Column(children: <Widget>[
          //lugar que mostra o saldo
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 176, 176, 1),
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
                            fontSize: 16,
                          )),
                      Text('e.g.: R\$ 546,98',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          )),
                    ])
                  ],
                ),
              ])),

          ///Adicionar cartão 01
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
              color: Color(0xFF10FF03),
              border: Border.all(
                color: Color(0xFF000000),
              ),
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 15,
                    icon: Icon(Icons.add_circle_outline_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                      iconSize: 15,
                      icon: Icon(Icons.credit_card_rounded),
                      onPressed: null),
                  Text('Adicionar cartão!',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ]),
          ),

          ///Adicionar cartão 02
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
              color: Color(0xFF10FF03),
              border: Border.all(
                color: Color(0xFF000000),
              ),
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 15,
                    icon: Icon(Icons.add_circle_outline_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                      iconSize: 15,
                      icon: Icon(Icons.credit_card_rounded),
                      onPressed: null),
                  Text('Adicionar cartão!',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ]),
          ),

          ///Adicionar cartão 03
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
              color: Color(0xFF10FF03),
              border: Border.all(
                color: Color(0xFF000000),
              ),
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    iconSize: 15,
                    icon: Icon(Icons.add_circle_outline_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                      iconSize: 15,
                      icon: Icon(Icons.credit_card_rounded),
                      onPressed: null),
                  Text('Adicionar cartão!',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ]),
          ),
        ]));
  }
}
