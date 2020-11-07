import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();
    return Container(
      color: cores.corPadrao,
      child: Center(
          child: SpinKitFadingCube(
        color: Colors.white,
        size: 50.0,
      )),
    );
  }
}
