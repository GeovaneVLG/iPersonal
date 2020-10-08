import 'package:flutter/material.dart';

class LojaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.attach_money),
                      onPressed: () {},
                      alignment: Alignment.center,
                    ),
                    Text(
                      "Coins",
                      style: TextStyle(
                          color: Color.fromRGBO(29, 176, 176, 1), fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        preferredSize: new Size.fromHeight(50),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.blueGrey,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(50, (index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      color: Colors.grey[100],
                      child: ListTile(
                        title: Text(
                          'Produto ${index + 1}',
                        ),
                        subtitle: Text("Demais informações"),
                        leading: Icon(Icons.shopping_cart, size: 40),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Divider(
              color: Colors.blueGrey,
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text("Resgatar Código Promocional"),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black)),
              child: TextFormField(
                keyboardType: TextInputType.text,
                maxLength: 6,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: "",
                  counterStyle: TextStyle(fontSize: 0),
                  prefixIcon: Icon(
                    Icons.confirmation_number,
                    color: Color.fromRGBO(29, 176, 176, 1),
                  ),
                  labelText: "Insira o código",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Color.fromRGBO(29, 176, 176, 1),
                      ),
                      onPressed: () {}),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Divider(
              color: Colors.blueGrey,
            ),
            Padding(padding: EdgeInsets.only(top: 1)),
          ],
        ),
      ),
    );
  }
}
