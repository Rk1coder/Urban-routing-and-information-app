import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class sosyalmedia extends StatefulWidget {

  @override
  State<sosyalmedia> createState() => __socialmedia();

}


class __socialmedia extends State<sosyalmedia> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('Kapsül-SİA-Doz',style: TextStyle(color: Colors.orange),),
      ),
      body: const WebView(
        initialUrl: "https://www.instagram.com/kapsulsiadoz/" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}