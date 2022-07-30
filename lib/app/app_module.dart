import 'package:flutter_modular/flutter_modular.dart';

import '../modules/home/home_module.dart';

class AppModule extends Module {
  // final SharedPreferences _sharedPreferences;

  // AppModule(this._sharedPreferences);

  AppModule();

  @override
  List<Module> get imports => [
        // CoreModule(),
        // AuthModule(),
        // SplashModule(),
        // ResendPasswordModule(),
      ];

  @override
  List<Bind<Object>> get binds => [
        // AsyncBind((i) => SharedPreferences.getInstance()),
        // Bind((i) => _sharedPreferences),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: HomeModule(),
          // module: SplashModule(),
        ),
        // ModuleRoute('/auth/', module: AuthModule(), guards: [
        //   AppGuard<AuthModule>('/auth/'),
        // ]),
        // ModuleRoute('/home/', module: HomeModule(), guards: [
        //   AuthGuard<AuthModule>('/home/', Modular.get<SharedPreferences>())
        // ]),
        // ModuleRoute(Modular.initialRoute, module: ResendPasswordModule()),
      ];
}
