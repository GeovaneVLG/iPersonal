import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';

class AgendaWidget extends StatefulWidget {
  @override
  _AgendaWidgetState createState() => _AgendaWidgetState();
}

class _AgendaWidgetState extends State<AgendaWidget> {
  Color corBFfundo;
  Color corBFtexto;
  Color corBEfundo;
  Color corBEtexto;
  Color apenasparateste = Colors.white;
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
        apenasparateste = Colors.white;
      });
    }

    void _botaoEmAberto() {
      setState(() {
        corBEfundo = Colors.grey[200];
        corBEtexto = cores.corPadrao;
        corBFfundo = Colors.white;
        corBFtexto = Colors.grey[400];
        apenasparateste = cores.corPadrao;
      });
    }

    return Scaffold(
      appBar: PreferredSize(
          child: Container(
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.02),
              child: Text("AGENDAMENTOS")),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.05)),
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
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.02),
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
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.02),
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
                Expanded(
                  child: Container(
                    color: cores.corFundoPadrao,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (context, i) {
                        return Container(
                          width: constraints.maxWidth * 0.6,
                          height: constraints.maxHeight * 0.2,
                          decoration: BoxDecoration(
                            color: apenasparateste,
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                color: Colors.grey[300],
                                offset: Offset(2.5, 2.5),
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                          margin: EdgeInsets.only(
                              top: constraints.maxHeight * 0.02,
                              bottom: constraints.maxHeight * 0.02,
                              left: constraints.maxWidth * 0.035,
                              right: constraints.maxWidth * 0.035),
                          alignment: Alignment.center,
                        );
                      },
                    ),
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
