import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_app_menu.dart';
import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Text('Contador Stateful', style: TextStyle(fontSize: 20)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador  $counter',
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar',
              onPressed: () => setState(() => counter++),
            ),
            CustomFlatButton(
              text: 'Decrementar',
              onPressed: () => setState(() => counter--),
            ),
          ],
        ),
        const Spacer()
      ],
    );
  }
}
