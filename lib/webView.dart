//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
        'https://www.youtube.com/'
        //'https://open.spotify.com/'
        //'https://www.google.co.in/'
          //'https://link-kyc.idv.hyperverge.co/?identifier=d08abcb4-d206-4662-a0f2-7da6cb58b412_1692336230'
          ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        // appBar: AppBar(
        //   title: const Text('Webview Flutter'),
        // ),
        body: SafeArea(child: WebViewWidget(controller: controller)));
  }
}
