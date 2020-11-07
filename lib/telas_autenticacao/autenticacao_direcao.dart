import 'package:flutter/material.dart';
import 'package:ipersonal/telas_autenticacao/cadastro_widget.dart';
import 'package:ipersonal/telas_autenticacao/login_widget.dart';

class AutenticacaoDirecao extends StatefulWidget {
  @override
  _AutenticacaoDirecaoState createState() => _AutenticacaoDirecaoState();
}

class _AutenticacaoDirecaoState extends State<AutenticacaoDirecao> {
  bool alterarTela = true;
  void trocarTela() {
    setState(() => alterarTela = !alterarTela);
  }

  @override
  Widget build(BuildContext context) {
    if (alterarTela) {
      return LoginWidget(trocarTela: trocarTela);
    } else {
      return CadastroWidget(trocarTela: trocarTela);
    }
  }
}
