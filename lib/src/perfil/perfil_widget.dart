import 'package:flutter/material.dart';

class PerfilWidget extends StatefulWidget {
  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  var imgUrl;
  @override
  void initState() {
    imgUrl = "assets/images/logo_facebook.png";
    super.initState();
  }

  void clicou() {
    setState(() {
      if (imgUrl == "assets/images/logo_facebook.png") {
        imgUrl = "assets/images/logo_ipersonal.jpeg";
      } else if (imgUrl == "assets/images/logo_ipersonal.jpeg") {
        imgUrl = "assets/images/logo_google.png";
      } else if (imgUrl == "assets/images/logo_google.png") {
        imgUrl = "assets/images/visa.jpg";
      } else {
        imgUrl = "assets/images/logo_facebook.png";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          "Perfil",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
                onTap: clicou,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(imgUrl),
                  width: MediaQuery.of(context).size.width * 0.6,
                ))
          ],
        ),
      ),
    );
  }
}
