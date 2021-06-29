import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './screens/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sama',
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: {
        Register.routeName: (ctx) => Register(),
      },
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Center(
//         child: Text('Sama'),
//       )),
//       body: Center(
//         child: Text('Let\'s build!'),
//       ),
//     );
//   }
// }
