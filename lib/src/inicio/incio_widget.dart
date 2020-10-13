import 'package:flutter/material.dart';

class InicioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color corPadrao = Color.fromRGBO(29, 176, 176, 1);

    return Scaffold(
      appBar: PreferredSize(
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Rua São Vicente, 140",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_drop_down),
                        onPressed: () {},
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.attach_money),
                        onPressed: () {},
                        alignment: Alignment.centerRight,
                      ),
                      Text(
                        "Coins",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          preferredSize: new Size.fromHeight(50)),
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
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: FlatButton(
                      color: corPadrao,
                      onPressed: () {},
                      child: Text(
                        "Personais",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                ),
                Expanded(
                  child: Container(
                    child: FlatButton(
                      color: corPadrao,
                      onPressed: () {},
                      child: Text(
                        "Nutricionistas",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: corPadrao,
                        ),
                        labelText: "Pesquisar",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  // Cria um grid com duas colunas
                  crossAxisCount: 1,
                  // Gera 50 Widgets que exibem o seu índice
                  children: List.generate(50, (index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      color: Colors.grey[100],
                      child: ListTile(
                        title: Text(
                          'Prof ${index + 1}',
                        ),
                        subtitle: Text("Demais informações"),
                        leading: Icon(Icons.account_circle, size: 40),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
