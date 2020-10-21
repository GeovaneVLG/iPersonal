import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';

class PerfilWidget extends StatefulWidget {
  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  CoresConfig cores = new CoresConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: cores.corPadrao,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(300, 30),
                  bottomLeft: Radius.elliptical(300, 30),
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey[500],
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        child: Container(
                            width: constraints.maxWidth * 0.30,
                            height: constraints.maxHeight * 0.45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: cores.corPadrao),
                            child: Image.asset(
                              "assets/images/aaa.jpg",
                              fit: BoxFit.fill,
                            )),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.1),
                        child: Text(
                          "Geovane Vinicius Lacerda Gomes",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
