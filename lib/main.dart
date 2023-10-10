import 'package:flutter/material.dart';
import 'package:web_view/webView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'webView Flutter',
      theme: ThemeData.dark(useMaterial3: true,
       
      ),
      home: WebView(),
    );
  }
}


