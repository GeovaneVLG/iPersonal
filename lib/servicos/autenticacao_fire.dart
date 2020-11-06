import 'package:firebase_auth/firebase_auth.dart';
import 'package:ipersonal/model/usuarios.dart';

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
  Future loginComEmailSenha(String email, String senha) async {
    try {
      UserCredential result = await _autenticacao.signInWithEmailAndPassword(
          email: email, password: senha);
      User user = result.user;
      return _usuariosFireBase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Cadastro com email e senha.
  Future cadastroComEmailSenha(String email, String senha) async {
    try {
      UserCredential result = await _autenticacao
          .createUserWithEmailAndPassword(email: email, password: senha);
      User user = result.user;
      return _usuariosFireBase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Logout, sair
  Future signOut() async {
    try {
      return await _autenticacao.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
