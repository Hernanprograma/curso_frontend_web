import 'package:curso_flutter_web_frontend_dashboard/router/router_generator.dart';
import 'package:curso_flutter_web_frontend_dashboard/services/navigator_services.dart';
import 'package:curso_flutter_web_frontend_dashboard/ui/layout/main_layout_page.dart';
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
      initialRoute: '/stateful',
      title: 'RutasApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: navigationService.navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
