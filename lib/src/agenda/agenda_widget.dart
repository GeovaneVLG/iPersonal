import 'package:flutter/material.dart';
import 'package:ipersonal/src/cores/cores_config.dart';

class AgendaWidget extends StatefulWidget {
  @override
  _AgendaWidgetState createState() => _AgendaWidgetState();
}

class _AgendaWidgetState extends State<AgendaWidget> {
  Color corBFfundo;
  Color corBFtexto;
  Color corBEfundo;
  Color corBEtexto;
  CoresConfig cores = new CoresConfig();

  void initState() {
    super.initState();
    corBFfundo = Colors.grey[200];
    corBFtexto = cores.corPadrao;
    corBEfundo = Colors.white;
    corBEtexto = Colors.grey[400];
  }

  @override
  Widget build(BuildContext context) {
    void _botaoFizalizado() {
      setState(() {
        corBFfundo = Colors.grey[200];
        corBFtexto = cores.corPadrao;
        corBEfundo = Colors.white;
        corBEtexto = Colors.grey[400];
      });
    }

    void _botaoEmAberto() {
      setState(() {
        corBEfundo = Colors.grey[200];
        corBEtexto = cores.corPadrao;
        corBFfundo = Colors.white;
        corBFtexto = Colors.grey[400];
      });
    }

    return Scaffold(
      appBar: PreferredSize(
          child: Container(
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text("AGENDAMENTOS")),
          preferredSize: Size.fromHeight(50)),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: corBFfundo,
                                border: Border(
                                    bottom: BorderSide(
                                        width: 6, color: Colors.grey[300]))),
                            alignment: Alignment.center,
                            height: constraints.maxHeight * 0.1,
                            child: Text(
                              "Finalizados",
                              style: TextStyle(color: corBFtexto),
                            ),
                          ),
                          onTap: _botaoFizalizado,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: corBEfundo,
                              border: Border(
                                bottom: BorderSide(
                                    width: 6, color: Colors.grey[300]),
                              ),
                            ),
                            alignment: Alignment.center,
                            height: constraints.maxHeight * 0.1,
                            child: Text(
                              "Em Aberto",
                              style: TextStyle(color: corBEtexto),
                            ),
                          ),
                          onTap: _botaoEmAberto,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
