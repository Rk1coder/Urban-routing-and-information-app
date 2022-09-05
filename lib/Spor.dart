import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class  Spor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(title: Text("Konaklama Yerleri",style: TextStyle(color: Colors.orange),),backgroundColor: Colors.black54,),
        body: Center(
          child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(
                          height: 50,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.home_work_rounded, color: Colors.orange, size: 50),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 20),
                      Text('Savarona Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(height: 50),
                    ]

                ),
                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 50,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.home_work_rounded, color: Colors.orange, size: 50),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 20),
                      Text('Kaf Dağı Konak Hotel',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),),
                      SizedBox(height: 50),
                    ]

                ),
                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 50,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.home_work_rounded, color: Colors.orange, size: 50),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 20),
                      Text('Green Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),),
                      SizedBox(height: 50),
                    ]

                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 50,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.home_work_rounded, color: Colors.orange, size: 50),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 20),
                      Text('Rhisos Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),
                      ),
                      SizedBox(height: 50),
                    ]

                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 50,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.home_work_rounded, color: Colors.orange, size: 50),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 20),
                      Text('Ricosta Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),),
                      SizedBox(height: 50),
                    ]

                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new SizedBox(
                          height: 50,
                          width: 30,
                          child: new IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: new Icon(Icons.home_work_rounded, color: Colors.orange, size: 50),
                            onPressed: (){

                            },
                          )
                      ),
                      SizedBox(width: 20),
                      Text('Lazlakar Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,

                        ),),
                      SizedBox(height: 50),
                    ]

                ),


                SizedBox(height: 50),

                ElevatedButton(
                  style: style,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new konaklama()),
                  );},
                  child: const Text('Daha Fazla Konaklama Yerleri',style: TextStyle(color: Colors.black54),),
                ),

              ]

          ),

        )
    );
  }
}

class konaklama extends StatefulWidget {

  @override
  State<konaklama> createState() => __Spor();

}

class __Spor extends State<konaklama> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: const Text('Konaklama yerleri',),
        ),
        body: const WebView(
          initialUrl: "https://www.google.com/maps/search/rize+konaklama+yerleri/@41.0394119,40.4880175,12.04z" ,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}