import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            Expanded(
              child: child,
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
