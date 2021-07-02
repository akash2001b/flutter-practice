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
    
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,  
                 
          child: SingleChildScrollView(
            child: Container(
              height: constraints.maxHeight,
              // color: Colors.red,testing
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  if (item == 1)
                    Positioned(
                      height: constraints.maxHeight * 0.3,
                      top: 0,
                      right: constraints.maxWidth * 0.33,
                      child: Image.asset(
                        "assets/images/person.png",
                        width: constraints.maxWidth * 0.33,
                      ),
                    ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/bottom1.png",
                      width: constraints.maxWidth,
                      color: Colors.red,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
