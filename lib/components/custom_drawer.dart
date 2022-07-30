import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            child: const Text('Teste Notion Pg 1'),
            onPressed: () {
              Navigator.of(context).pop();
              Modular.to.navigate('pageOne');
            },
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            child: const Text('Teste Notion Pg 2'),
            onPressed: () {
              Navigator.of(context).pop();
              Modular.to.navigate('pageTwo');
            },
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            child: const Text('Teste Notion Pg 3'),
            onPressed: () {
              Navigator.of(context).pop();
              Modular.to.navigate('pageThree');
            },
          ),
        ],
      ),
    );
  }
}
