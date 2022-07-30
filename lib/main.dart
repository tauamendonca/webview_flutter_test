import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app/app_module.dart';
import 'app/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ModularApp(
      // module: AppModule(sharedPreferences),
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
