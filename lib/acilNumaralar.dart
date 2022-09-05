import 'package:flutter/material.dart';

class AcilNumaralar extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Acil Numaralar",style: TextStyle(color: Colors.orange),),backgroundColor: Colors.black54,),
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
                        icon: new Icon(Icons.phone, color: Colors.orange, size: 50),
                        onPressed: (){

                        },
                      )
                  ),
                  SizedBox(width: 15),
                  Text('112',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),
                  ),
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
                  icon: new Icon(Icons.medical_services, color: Colors.orange, size: 50),
                  onPressed: (){

                  },
                )
            ),
            SizedBox(width: 15),
            Text('Ambulans : 112',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,

              ),
            ),
            SizedBox(height: 90),
          ]

      ),
            Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new SizedBox(
                      height:50,
                      width: 40,
                      child: new IconButton(
                        padding: new EdgeInsets.all(0.0),
                        icon: new Icon(Icons.fireplace, color: Colors.orange, size: 50),
                        onPressed: (){

                        },
                      )
                  ),
                  SizedBox(width: 15),
                  Text('İtfaiye : 110',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,

                  ),

                  ),
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
                        icon: new Icon(Icons.local_police_outlined, color: Colors.orange, size: 50),
                        onPressed: (){

                        },
                      )
                  ),
                  SizedBox(width: 15),
                  Text('Polis : 155',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),
                  ),
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
                        icon: new Icon(Icons.local_police_outlined, color: Colors.orange, size: 50),
                        onPressed: (){

                        },
                      )
                  ),
                  SizedBox(width: 15),
                  Text('Jandarma:156',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),
                  ),
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
                        icon: new Icon(Icons.circle_notifications, color: Colors.red, size: 30),
                        onPressed: (){

                        },
                      )
                  ),
                  SizedBox(width: 15),
                  Text('Bütün acil numaralar 112 nollu hatta bağlanmıştır.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),
                  ),
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