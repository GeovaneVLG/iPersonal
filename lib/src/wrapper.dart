import 'package:flutter/material.dart';
import 'package:ipersonal/model/usuarios.dart';
import 'package:ipersonal/src/home/home_widget.dart';
import 'package:ipersonal/telas_autenticacao/autenticacao_direcao.dart';
import 'package:provider/provider.dart';

class WrapperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Usuarios>(context);

    if (user == null) {
      return AutenticacaoDirecao();
    } else {
      return HomeWidget();
    }
  }
}
