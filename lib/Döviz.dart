import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Doviz extends StatefulWidget {

  @override
  State<Doviz> createState() => __Doviz();

}

class __Doviz extends State<Doviz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('Döviz Çevirici',style: TextStyle(color: Colors.orange),),
      ),
      body: const WebView(
        initialUrl: 'https://www.ziraatbank.com.tr/tr/hesaplama-araclari/doviz-cevirici',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
