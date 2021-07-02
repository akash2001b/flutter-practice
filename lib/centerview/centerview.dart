import 'package:flutter/material.dart';
import 'dart:math';

class CenterViewxx extends StatelessWidget {
  final Widget child;

  CenterViewxx({this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.yellow, //testing
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: size.width > 650 ? min(size.width * 0.45, 500) : 500,
            maxHeight: size.height,
          ),
          child: child,
        ),
      ),
    );
  }
}
