import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Translate extends StatefulWidget {

  @override
  State<Translate> createState() => __Translate();

}

class __Translate extends State<Translate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('Çeviri',style: TextStyle(color: Colors.orange),),
      ),
      body: const WebView(
        initialUrl: "https://translate.google.com/" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}