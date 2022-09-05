import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Ibadet extends StatefulWidget {

  @override
  State<Ibadet> createState() => __Ibadet();

}

class __Ibadet extends State<Ibadet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('İbadethaneler',style: TextStyle(color: Colors.orange),),
      ),
      body: const WebView(
        initialUrl: "https://www.google.com/maps/search/rize+ibadet+haneler/@41.0311703,40.5184132,13z/data=!3m1!4b1" ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}