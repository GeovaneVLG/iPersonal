import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';

class LojaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          width: MediaQuery.of(context).size.width,
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
                      "Saldo",
                      style: TextStyle(color: cores.corPadrao, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(50),
      ),
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
                Divider(
                  color: Colors.blueGrey,
                ),
                Expanded(
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: GridView.count(
                      crossAxisCount: 2,
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
                Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.01)),
                Text("Resgatar Código Promocional"),
                Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.01)),
                Container(
                  height: 40,
                  width: constraints.maxWidth * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: cores.corPadrao)),
                  child: TextFormField(
                    cursorColor: cores.corPadrao,
                    keyboardType: TextInputType.text,
                    maxLength: 6,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: "",
                      counterStyle: TextStyle(fontSize: 0),
                      prefixIcon: Icon(
                        Icons.confirmation_number,
                        color: cores.corPadrao,
                      ),
                      labelText: "Insira o código",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: cores.corPadrao,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.01)),
                Divider(
                  color: Colors.blueGrey,
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.001)),
              ],
            ),
          );
        },
      ),
    );
  }
}
