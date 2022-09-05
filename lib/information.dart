import 'package:flutter/material.dart';
import 'package:kapsul_sia_doz/linkedin.dart';
import 'package:kapsul_sia_doz/socialmedia.dart';
import 'package:kapsul_sia_doz/youtube.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Information extends StatefulWidget {

  @override
  State<Information> createState() => __info();

}

class __info extends State<Information> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('Uygulama Bilgileri',style: TextStyle(color: Colors.orange),),
      ),
        body: Center(
            child:

            Container(

              child : Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 50,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.screen_search_desktop_outlined, color: Colors.orange, size: 40),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Geliştirici:Kapsül-Sia-Doz Teknofest Takımı',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,

                            ),),
                          SizedBox(height: 60),
                        ]

                    ),

                    //sosyalmedyalar
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 50,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.attachment, color: Colors.orange, size: 50),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => sosyalmedia()),
                                  );

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text("@İnstagram",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

                            ),),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 50,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.attachment, color: Colors.orange, size: 50),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => linlin()),
                                  );

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text("@Linkedin",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

                            ),),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 50,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.attachment, color: Colors.orange, size: 50),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => youtubee()),
                                  );

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text("@Youtube",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

                            ),),
                          SizedBox(height: 90),
                        ]

                    ),
                    Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new SizedBox(
                              height: 50,
                              width: 40,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon: new Icon(Icons.calendar_month, color: Colors.black54, size: 25),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text("2022",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,

                            ),),
                          SizedBox(height: 90),
                        ]

                    ),



                  ]

              ),
            )
        )
    );
  }
}