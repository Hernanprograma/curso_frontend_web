import 'package:curso_flutter_web_frontend_dashboard/locator.dart';
import 'package:curso_flutter_web_frontend_dashboard/router/router.dart';
import 'package:curso_flutter_web_frontend_dashboard/services/navigator_services.dart';
import 'package:curso_flutter_web_frontend_dashboard/ui/layout/main_layout_page.dart';

import 'package:flutter/material.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'RutasApp',
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      //onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
