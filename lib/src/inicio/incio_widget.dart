import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';

class InicioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();

    return Scaffold(
      appBar: PreferredSize(
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
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
                        "Saldo",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(50)),
      backgroundColor: cores.corFundoPadrao,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: EdgeInsets.only(
                left: constraints.maxWidth * 0.03,
                right: constraints.maxWidth * 0.03),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                          color: cores.corPadrao,
                          onPressed: () {},
                          child: Text(
                            "Personais",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: constraints.maxWidth * 0.05),
                    ),
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                          color: cores.corPadrao,
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
                  padding: EdgeInsets.only(top: constraints.maxHeight * 0.025),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: constraints.maxHeight * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: cores.corPadrao)),
                        child: TextFormField(
                          cursorColor: cores.corPadrao,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: cores.corPadrao,
                            ),
                            labelText: "Pesquisar",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.025)),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints2) {
                      return Container(
                        width: constraints2.maxWidth,
                        height: constraints2.maxHeight,
                        child: GridView.count(
                          // Cria um grid com duas colunas
                          crossAxisCount: 2,
                          // Gera 50 Widgets que exibem o seu índice
                          children: List.generate(50, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(2.5, 2.5),
                                    blurRadius: 2.0,
                                  )
                                ],
                              ),
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.center,
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
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
