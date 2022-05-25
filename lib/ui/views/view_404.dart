import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '404',
              style: TextStyle(fontSize: 70),
            ),
            const SizedBox(height: 20),
            const Text(
              'Pagina no encontrada',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            CustomFlatButton(
              text: 'Regresar',
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
            ),
          ],
        ),
      ),
    );
  }
}
