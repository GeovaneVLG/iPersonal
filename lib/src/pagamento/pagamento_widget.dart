import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class PagamentoWidget extends StatefulWidget {
  @override
  _PagamentoWidgetState createState() => _PagamentoWidgetState();
}

class _PagamentoWidgetState extends State<PagamentoWidget> {
  String dropDownOpcao = 'Cartão de Crédito';
  Color corPadrao = Color.fromRGBO(29, 176, 176, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Formas de Pagamento',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: ResponsiveFlutter.of(context).fontSize(2.5)),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: corPadrao,
              ),
              onPressed: null),
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Divider(
              color: Colors.blueGrey,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: ResponsiveFlutter.of(context).moderateScale(8),
                  right: ResponsiveFlutter.of(context).moderateScale(8)),
              width: ResponsiveFlutter.of(context).wp(100),
              height: ResponsiveFlutter.of(context).hp(6),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Text("Cartão de Crédito",
                              style: TextStyle(
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.8)))),
                      Expanded(
                          child: Text("VISA **** 4015",
                              style: TextStyle(
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.8),
                                  color: Colors.grey)))
                    ],
                  ),
                  Expanded(
                    child: Container(
                        height: ResponsiveFlutter.of(context).hp(3),
                        alignment: Alignment.centerRight,
                        child: Image.asset("assets/images/visa.jpg")),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    alignment: Alignment.centerRight,
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.blueGrey,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveFlutter.of(context).moderateScale(8)),
              child: Container(
                  width: ResponsiveFlutter.of(context).wp(100),
                  child: Text("Nova Forma de Pagamento",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize:
                              ResponsiveFlutter.of(context).fontSize(1.8)))),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: ResponsiveFlutter.of(context).moderateScale(8),
                  left: ResponsiveFlutter.of(context).moderateScale(8),
                  right: ResponsiveFlutter.of(context).moderateScale(8)),
              child: Container(
                alignment: Alignment.center,
                width: ResponsiveFlutter.of(context).wp(100),
                height: ResponsiveFlutter.of(context).hp(5),
                decoration: BoxDecoration(
                  color: corPadrao,
                  borderRadius: BorderRadius.circular(
                    ResponsiveFlutter.of(context).moderateScale(8),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: ResponsiveFlutter.of(context).moderateScale(8),
                      right: ResponsiveFlutter.of(context).moderateScale(8)),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    underline: Container(
                      height: 0,
                      color: corPadrao,
                    ),
                    dropdownColor: Colors.grey,
                    value: dropDownOpcao,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropDownOpcao = newValue;
                      });
                    },
                    items: <String>[
                      'Cartão de Crédito',
                      'Cartão de Débito',
                      'Boleto Bancário',
                      'Dinheiro'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.all(
                      ResponsiveFlutter.of(context).moderateScale(8)),
                  child: Container(
                    width: ResponsiveFlutter.of(context).wp(100),
                    child: modoSelecionado(),
                  )),
            )
          ],
        ));
  }

  modoSelecionado() {
    if (dropDownOpcao == "Cartão de Crédito") {
      return _cartaoCredito();
    } else if (dropDownOpcao == "Cartão de Débito") {
      return _cartaoDebito();
    } else if (dropDownOpcao == "Boleto Bancário") {
      return _boletoBancario();
    } else if (dropDownOpcao == "Dinheiro") {
      return _dinheiro();
    } else {
      return null;
    }
  }

  Widget _cartaoCredito() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: ResponsiveFlutter.of(context).moderateScale(3)),
          alignment: Alignment.center,
          height: ResponsiveFlutter.of(context).hp(4),
          width: ResponsiveFlutter.of(context).wp(100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  ResponsiveFlutter.of(context).moderateScale(5)),
              border: Border.all(color: Colors.black)),
          child: TextFormField(
            style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(1.8)),
            keyboardType: TextInputType.number,
            maxLength: 10,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              counterText: "",
              counterStyle: TextStyle(fontSize: 0),
              labelText: " Número do Cartão de Crédito",
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
                top: ResponsiveFlutter.of(context).moderateScale(8))),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    left: ResponsiveFlutter.of(context).moderateScale(3)),
                alignment: Alignment.center,
                height: ResponsiveFlutter.of(context).hp(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        ResponsiveFlutter.of(context).moderateScale(5)),
                    border: Border.all(color: Colors.black)),
                child: TextFormField(
                  style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(1.8)),
                  keyboardType: TextInputType.datetime,
                  textAlign: TextAlign.center,
                  maxLength: 5,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    counterText: "",
                    counterStyle: TextStyle(fontSize: 0),
                    labelText: " Validade",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
            ),
            Container(
              width: ResponsiveFlutter.of(context).wp(20),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    left: ResponsiveFlutter.of(context).moderateScale(3)),
                alignment: Alignment.center,
                height: ResponsiveFlutter.of(context).hp(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        ResponsiveFlutter.of(context).moderateScale(5)),
                    border: Border.all(color: Colors.black)),
                child: TextFormField(
                  style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(1.8)),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 3,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    counterText: "",
                    counterStyle: TextStyle(fontSize: 0),
                    labelText: " Código",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(
                top: ResponsiveFlutter.of(context).moderateScale(8))),
        Container(
          padding: EdgeInsets.only(
              left: ResponsiveFlutter.of(context).moderateScale(3)),
          alignment: Alignment.center,
          height: ResponsiveFlutter.of(context).hp(4),
          width: ResponsiveFlutter.of(context).wp(100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  ResponsiveFlutter.of(context).moderateScale(5)),
              border: Border.all(color: Colors.black)),
          child: TextFormField(
            style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(1.8)),
            keyboardType: TextInputType.text,
            maxLength: 50,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              counterText: "",
              counterStyle: TextStyle(fontSize: 0),
              labelText: " Nome do titular",
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
                top: ResponsiveFlutter.of(context).moderateScale(3))),
        Divider(color: Colors.blueGrey),
        Flexible(
          child: Container(
              alignment: Alignment.center,
              height: ResponsiveFlutter.of(context).hp(5),
              width: ResponsiveFlutter.of(context).wp(100),
              decoration: BoxDecoration(
                color: corPadrao,
                borderRadius: BorderRadius.circular(
                  ResponsiveFlutter.of(context).moderateScale(8),
                ),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text("Confirmar",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              )),
        )
      ],
    );
  }

  Widget _cartaoDebito() {
    return Column(
      children: <Widget>[Text("Debito")],
    );
  }

  Widget _boletoBancario() {
    return Column(
      children: <Widget>[Text("Boleto")],
    );
  }

  Widget _dinheiro() {
    return Column(
      children: <Widget>[Text("Dinheiro")],
    );
  }
}
