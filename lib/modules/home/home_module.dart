import 'package:flutter_modular/flutter_modular.dart';
import '../webview/view/webview_page.dart';
import 'view/home_page.dart';

class HomeModule extends Module {
  HomeModule();

  @override
  List<Module> get imports => [
        //Implementar imports
      ];

  @override
  List<Bind<Object>> get binds => [
        //Implementar Binds
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const HomePage(),
            transition: TransitionType.fadeIn,
            children: [
              ChildRoute(
                '/pageOne',
                child: (context, args) => const WebviewPage(
                  pageUrl:
                      //TODO: Descobrir qual a melhor forma de apresentar as páginas
                      //esse aqui é um exemplo usando a página base do notion.
                      //não é minha ideia usar ele pq a navegação acaba sendo controlada pelo Notion
                      'https://tauamendonca.notion.site/2ad36742621e44ccbab7f4df0c5248db',
                ),
              ),
              ChildRoute(
                '/pageTwo',
                child: (context, args) => const WebviewPage(
                  pageUrl:
                      //esse é um exemplo das subpáginas. O problema fica quando nós navegamos por elas e o app
                      //perde o contexto de onde ele está, mantendo a página por onde começamos como sendo a pág abertas
                      'https://tauamendonca.notion.site/cfbe5e38c02c4ad3991fc4ab0725c5ed',
                ),
              ),
              ChildRoute(
                '/pageThree',
                child: (context, args) => const WebviewPage(
                  pageUrl:
                      'https://tauamendonca.notion.site/d8e4bee9c163445582cd847dd8da8a76',
                ),
              ),
            ]),
      ];
}
