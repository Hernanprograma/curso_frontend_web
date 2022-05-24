import 'package:curso_flutter_web_frontend_dashboard/locator.dart';
import 'package:curso_flutter_web_frontend_dashboard/services/navigator_services.dart';
import 'package:curso_flutter_web_frontend_dashboard/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            color: Colors.black,
            // onPressed: () {
            //   Navigator.pushNamed(context, '/stateful');
            // },
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador con Provider',
            color: Colors.black,
            // onPressed: () {
            //   Navigator.pushNamed(context, '/provider');
            // },
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra Página',
            color: Colors.black,
            // onPressed: () {
            //   Navigator.pushNamed(context, '/abc123');
            // },
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
          ),
        ],
      ),
    );
  }
}
