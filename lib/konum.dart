import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatelessWidget {

  late String latitude;
  late String longitude;
  late String MyLocation="Enlem : "+"41.028396"+", Boylam : "+"40.5134692";

  Future<void> permisionandLoc() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();

      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude.toString();
      longitude = position.longitude.toString();

    } catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    permisionandLoc();
    return Scaffold(
        appBar: AppBar(title: Text("Konumum",style: TextStyle(color: Colors.orange),),backgroundColor: Colors.black54,),
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
                                icon: new Icon(Icons.location_city, color: Colors.orange, size: 50),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text('Rize',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

                            ),),
                          SizedBox(height: 60),
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
                                icon: new Icon(Icons.location_on_outlined, color: Colors.orange, size: 50),
                                onPressed: (){

                                },
                              )
                          ),
                          SizedBox(width: 8),
                          Text(MyLocation,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

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