import 'package:flutter/material.dart';
import 'package:ipersonal/src/agenda/agenda_widget.dart';
import 'package:ipersonal/src/cores/cores_config.dart';
import 'package:ipersonal/src/inicio/incio_widget.dart';
import 'package:ipersonal/src/loja/loja_widget.dart';
import 'package:ipersonal/src/perfil/perfil_widget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  CoresConfig cores = new CoresConfig();

  List<Widget> _telas;
  Widget _telaInicio;
  Widget _telaLoja;
  Widget _telaAgenda;
  Widget _telaPerfil;

  Widget _telaAtual;
  int _selectedIndex;

  @override
  void initState() {
    super.initState();

    _telaInicio = InicioWidget();
    _telaLoja = LojaWidget();
    _telaAgenda = AgendaWidget();
    _telaPerfil = PerfilWidget();

    _telas = [_telaInicio, _telaLoja, _telaAgenda, _telaPerfil];

    _selectedIndex = 0;
    _telaAtual = _telaInicio;
  }

  void onClickMenu(int index) {
    setState(() {
      _selectedIndex = index;
      _telaAtual = _telas[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telaAtual,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            title: Text('Loja'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Agenda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('Perfil'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: cores.corPadrao,
        onTap: (index) => onClickMenu(index),
      ),
    );
  }
}
