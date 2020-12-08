import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:ipersonal/model/usuarios.dart';

class AutenticacaoFire {
  final FirebaseAuth _autenticacao = FirebaseAuth.instance;
  final fireBD = FirebaseDatabase.instance.reference();

  //Instanciando usuario.
  Usuarios _usuariosFireBase(User user) {
    if (user != null) {
      Usuarios usuario = new Usuarios(uid: user.uid);
      usuario.setEmail(user.email);
      usuario.setNome(user.displayName);
      return usuario;
    } else {
      return null;
    }
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
  Future cadastroComEmailSenha(String email, String senha, String nome) async {
    try {
      UserCredential result = await _autenticacao
          .createUserWithEmailAndPassword(email: email, password: senha);
      User user = result.user;
      fireBD.child("usuarios").child(user.uid).child("email").set(user.email);
      fireBD.child("usuarios").child(user.uid).child("nome").set(nome);
      user.updateProfile(displayName: nome);
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
