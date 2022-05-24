import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: TextStyle(fontSize: 70),
          ),
          SizedBox(height: 20),
          Text(
            'Pagina no encontrada',
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(height: 20),
          CustomFlatButton(
              text: 'Regresar',
              onPressed: () => Navigator.pushNamed(context, '/stateful')),
        ],
      )),
    );
  }
}
