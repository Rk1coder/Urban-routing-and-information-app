import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kapsul_sia_doz/information.dart';
import 'package:kapsul_sia_doz/translate.dart';
import 'dart:async';
import 'mainPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'dil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: dil()  ,

      locale: Get.locale==null?Get.deviceLocale: Get.locale,
      fallbackLocale:dil.varsayilan ,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.oswaldTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),

      home: const MyHomePage(title: 'TekTık'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String _timeString;
  late String dropdownValue = 'TR';

  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.black54,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tittle.png',
              fit: BoxFit.contain,
              height: 125,

            ),
            Container(
                padding: const EdgeInsets.all(8.0))
          ],

        ),
      ),
      bottomNavigationBar:
      BottomAppBar(
        elevation: 10,
        color: Colors.orange,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.info,
                color: Colors.black54,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Information()),
              );},
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              icon: const Icon(
                Icons.language_sharp,
                color: Colors.black54,
                size: 30,

              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Translate()),
                );
              },
            ),



          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
        backgroundColor: Colors.black54,
        child: const Icon(Icons.waving_hand_outlined,color: Colors.orange,),



      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      body: Center(


        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: <Widget>[
                Row(
                  children: [
                    Expanded(child: Container(child:AspectRatio(aspectRatio:5.0/2.2,child: Image.asset("assets/dünyael.jpg"),)))
                  ],
                ),

                Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(width: 6,height: 2,),
                      Text("HOŞGELDİNİZ\n  WELCOME\nWILLKOMMEN\n   اهلا سهلا    ",
                        style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,


                        ),


                      ),

                      SizedBox(height: 100),
                    ]

                ),



                new SizedBox(

                    height: 70,
                    width: 100,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(
                          Icons.access_time_rounded, color: Colors.orange, size: 60),
                      onPressed: () {

                      },
                    )
                ),
                SizedBox(height: 10, width: 40,),
                Text(
                  _timeString,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,

                  ),


                ),

                SizedBox(height: 35),

                new SizedBox(
                    height: 70,
                    width: 300,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(
                          Icons.cloud_queue_rounded, color: Colors.orange,
                          size: 70),
                      onPressed: () {

                      },
                    )
                ),
                SizedBox(height: 10, width: 40,),
                Text(
                  "Parçalı Bulutlu".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),


                ),

                SizedBox(height: 35),

                new SizedBox(
                    height: 70,
                    width: 250,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(
                          Icons.navigation_outlined, color: Colors.orange,
                          size: 60),
                      onPressed: () {

                      },
                    )
                ),
                SizedBox(height: 3, width: 40,),
                Text("Rize",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),

                SizedBox(height: 50),

               /* Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                      child: Text("EN",style: GoogleFonts.oswald(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blueGrey
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      onTap: (){
                        Get.updateLocale(Locale("en","US"));
                        
                      },
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left:10),
                        child: Text("TR",style: GoogleFonts.oswald(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.redAccent
                        ),
                        padding: EdgeInsets.all(15),
                      ),
                      onTap: (){
                        Get.updateLocale(Locale("tr","TR"));
                      },
                    ),
                  ],

                ),*/


              ]
          )
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
  void _getTime() {
    final String formattedDateTime =
    DateFormat('kk:mm:ss').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
    });
  }
}
