import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_test/components/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Webview Test'),
      ),
      body: const RouterOutlet(),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: const <Widget>[
      //       Text(
      //         'Página inicial, clique nos botões do drawer para navegar',
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
