import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final int item;
  const Background({
    Key key,
    @required this.item,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              if (item == 1)
                Positioned(
                  height: size.height * 0.3,
                  top: 0,
                  right: size.width * 0.33,
                  child: Image.asset(
                    "assets/images/person.png",
                    width: size.width * 0.33,
                  ),
                ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/bottom1.png",
                  width: size.width,
                  color: Colors.red,
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
