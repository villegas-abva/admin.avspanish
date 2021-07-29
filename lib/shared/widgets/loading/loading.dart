import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//{String mode, String charset = 'utf-8'}
class Loading extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Center(
        child: SpinKitChasingDots(
          color:  Theme.of(context).primaryColor,
          size: 50.0,
        ),
      ),
    );
  }
}
