import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//TODO: Aviso sobre SDK Android. O webview_flutter só funciona com SDK 19 para cima.
// Inicialmente fiquei confuso e achei q era o Dart SDK então se houver algum resquício que pareça
// vir de uma instalação de uma versão diferenciada de Flutter ou Dart, foi das experiências que fiz
// Acredito que limpei direitinho, mas como não sei como é o pc de todo mundo...
class WebviewPage extends StatefulWidget {
  final String pageUrl;

  const WebviewPage({Key? key, required this.pageUrl}) : super(key: key);

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  late WebViewController _webviewController;

  // ignorei aqui para ter esta parcela pronta para utilizar caso implemente mais funções do controller
  // ignore: unused_field
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: WebView(
        navigationDelegate: (navigation) => NavigationDecision.prevent,
        initialUrl: widget.pageUrl,
        javascriptMode: JavascriptMode.unrestricted,
        allowsInlineMediaPlayback: true,
        debuggingEnabled: false,
        onWebViewCreated: (controller) {
          _webviewController = controller;
        },
        //TODO: Fazer esse Javascript funcionar / esconder aba de cima do Notion
        //Aqui tem um teste com diversas formas de esconder aquela barra de título do Notion que está
        //abaixo da appbar. O Javascript não rodou, ou se rodou não buildou a nova página
        //os códigos abaixo funcionam no console do desenvolvedor
        //o método antes se chamava evaluateJavascript, mas foi depreciado pelo runJavascript e pelo runtAndReturnJavascript
        onPageFinished: (initialUrl) {
          _webviewController.runJavascript(
            '''document.getElementsByClassName('notion-topbar').style.height=0;
            document.getElementsByClassName('notion-topbar').style.width=0;
            document.getElementsByClassName('notion-topbar').visibility="hidden";
            document.getElementsByClassName('notion-topbar').style.display=none;
            document.getElementsByClassName('notion-header').style..display=none!important;
       ''',
          );
        },
      ),
    );
  }
}
