import 'package:flutter/material.dart';

import 'package:kapsul_sia_doz/Eglence.dart';
import 'package:kapsul_sia_doz/gocidaresi.dart';
import 'package:kapsul_sia_doz/konum.dart';
import 'package:kapsul_sia_doz/translate.dart';
import 'package:kapsul_sia_doz/ulasim.dart';
import 'package:get/get.dart';



import 'Döviz.dart';
import 'Restoran.dart';
import 'Spor.dart';
import 'acilNumaralar.dart';
import 'gezilecekYerler.dart';
import 'hospital.dart';
import 'ibadet.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black54,

          title: Text("Size nasıl yardımcı olabilirim ?",style: TextStyle(color: Colors.orange),)


      ),
      body: Center(
        child: Container(


          child : Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.local_hospital, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hospital()),
                        );
                      },
                    )
                ),
                Text(
                    'Sağlık Kuruluşları'.tr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),
                ),
                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.phone, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AcilNumaralar()),
                        );
                      },
                    )
                ),
                Text(
                    'Acil Numaralar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),
                ),
                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.gamepad_outlined, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eglence(title: '',)),
                        );
                      },
                    )
                ),
                Text(
                    'Eğlenelim Öğrenelim',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),),
                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.directions_walk, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GezilecekList(title: '',)),
                        );
                      },
                    )
                ),
                Text('Gezilecek Yerler',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),
                ),

                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.directions_bus, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeferSaatleri()),
                        );
                      },
                    )
                ),
                Text('Ulaşım',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),

                ),

                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.home_filled, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Spor()),
                        );
                      },
                    )
                ),
                Text('Konaklama',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),

                ),
              ],
            ),

            SizedBox(width: 30),
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.home_work_rounded, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DevletKurumlari()),
                        );
                      },
                    )
                ),
                Text('Devlet Kurumları',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),


                ),
                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.fastfood, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Yemekler()),
                        );
                      },
                    )
                ),
                Text('Yemekler',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),
                ),
                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.location_on_outlined, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Location()),
                        );
                      },
                    )
                ),
                Text('Konumum',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),


                ),
                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.translate, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Translate()),
                        );
                      },
                    )
                ),
                Text('Çeviri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),

                ),

                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.mosque, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ibadet()),
                        );
                      },
                    )
                ),
                Text('ibadethaneler',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),
                ),

                SizedBox(height: 30),

                new SizedBox(
                    height: 60,
                    width: 50,
                    child: new IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: new Icon(Icons.money, color: Colors.orange, size: 60),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Doviz()),
                        );
                      },
                    )
                ),
                Text('Kur/Nakit işlemleri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),

                ),
              ],
            ),



          ],
        ),
        ),
      ),
    );
  }
}