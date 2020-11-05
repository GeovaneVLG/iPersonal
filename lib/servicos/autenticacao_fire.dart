import 'package:firebase_auth/firebase_auth.dart';
import 'package:ipersonal/src/model/usuarios/usuarios.dart';

class AutenticacaoFire {
  final FirebaseAuth _autenticacao = FirebaseAuth.instance;

  //Instanciando usuario.
  Usuarios _usuariosFireBase(User user) {
    return user != null ? Usuarios(uid: user.uid) : null;
  }

  //Autenticacao alterada.
  Stream<Usuarios> get user {
    return _autenticacao.authStateChanges().map(_usuariosFireBase);
  }

  //Login com email e senha.

  //Cadastro com email e senha.

  //Logout, sair

}
