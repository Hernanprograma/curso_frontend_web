import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_app_menu.dart';
import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterProviderPage extends StatefulWidget {
  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text('Contador Provider', style: TextStyle(fontSize: 20)),
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
              CustomFlatButton(text: 'Incrementar', onPressed: () => setState(() => counter++)),
              CustomFlatButton(text: 'Decrementar', onPressed: () => setState(() => counter--)),
            ],
          ),
          Spacer()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(() => counter++),
      ),
    );
  }
}
