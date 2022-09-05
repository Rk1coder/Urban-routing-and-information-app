import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class youtubee extends StatefulWidget {

  @override
  State<youtubee> createState() => __youtube();

}


class __youtube extends State<youtubee> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('Kapsül-SİA-Doz',style: TextStyle(color: Colors.orange),),
      ),
      body: const WebView(
        initialUrl: "https://www.youtube.com/watch?v=ZqQZnLlvD_Q" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}