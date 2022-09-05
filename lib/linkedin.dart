import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class linlin extends StatefulWidget {

  @override
  State<linlin> createState() => __socialmedialin();

}


class __socialmedialin extends State<linlin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('Kapsül-SİA-Doz',style: TextStyle(color: Colors.orange),),
      ),
      body: const WebView(
        initialUrl: "https://www.linkedin.com/company/kaps%C3%BClsi%CC%87adoz/" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
