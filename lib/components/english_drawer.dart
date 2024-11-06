import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class EnglishDrawer extends StatelessWidget {
  const EnglishDrawer({super.key});

  Widget _createItem(IconData icon, String label, void Function()? onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            alignment: Alignment.bottomRight,
            child: const Text(
              'Vamos estudar inglês',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(Icons.troubleshoot_sharp, 'Contéudos',
              () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
          _createItem(
              Icons.settings,
              'Configurações',
              () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.SETTINGS)),
          _createItem(
              Icons.question_mark,
              'Perguntas Frequentes',
              () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.FREQUENTLY_ASKED_QUESTIONS)),
        ],
      ),
    );
  }
}
