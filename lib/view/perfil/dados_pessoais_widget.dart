import 'package:flutter/material.dart';
import 'package:ipersonal/model/usuarios.dart';
import 'package:provider/provider.dart';

class DadosPesoaisWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Usuarios>(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(constraints.maxHeight * 0.03),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Email:"),
                Container(
                  child: Text(
                    user.getEmail(),
                    textAlign: TextAlign.center,
                  ),
                  width: constraints.maxWidth,
                ),
                Text("Data de nascimento:"),
                Container(
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Informe a data'),
                  ),
                  alignment: Alignment.center,
                  width: constraints.maxWidth,
                ),
                Text("Endereço:"),
                Container(
                  child: Text(
                    "Cidade: Belo Horizonte",
                    textAlign: TextAlign.center,
                  ),
                  width: constraints.maxWidth,
                ),
                Container(
                  child: Text(
                    "UF: MG",
                    textAlign: TextAlign.center,
                  ),
                  width: constraints.maxWidth,
                ),
                Container(
                  child: Text(
                    "Rua: Águas de Lindóia",
                    textAlign: TextAlign.center,
                  ),
                  width: constraints.maxWidth,
                ),
                Container(
                  child: Text(
                    "N°: 678",
                    textAlign: TextAlign.center,
                  ),
                  width: constraints.maxWidth,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: constraints.maxWidth * 0.03),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("EDITAR"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
