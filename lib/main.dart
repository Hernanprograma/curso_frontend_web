import 'package:curso_flutter_web_frontend_dashboard/ui/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
      },
      initialRoute: '/home',
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
