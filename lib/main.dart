import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intenciones',
      home: MyHomePage(title: 'Flutter Demo Intenciones'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.language, color: Colors.white)
                  ),

                  title: Text(
                    "Abrir URL",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("http://itcelaya.edu.mx", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'https://itcelaya.edu.mx';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.phone, color: Colors.white)
                  ),

                  title: Text(
                    "Llamada Telefónica",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'tel:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo llamar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.message, color: Colors.white)
                  ),

                  title: Text(
                    "Enviar SMS",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text("Tel: 4610000000", style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'sms:4615468324';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.language, color: Colors.white)
                  ),

                  title: Text(
                    "Abrir URL",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text('Intenciones en flutter', style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'https://www.google.com/search?q=intenciones flutter&oq=intenciones flutter';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.map, color: Colors.white)
                  ),

                  title: Text(
                    "Abrir Google Maps",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text('Abrir ubicacion en el tecno', style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'https://www.google.com/maps/search/?api=1&query=20.5409757, -100.8128918';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.email, color: Colors.white)
                  ),

                  title: Text(
                    "Correo",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text('Mandar Correo', style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'mailto:ruben.torres@itcelaya.edu.mx?subject=Intenciones&body=Prueba de intencion';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("No se pudo lanzar");
                    }
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.camera, color: Colors.white)
                  ),

                  title: Text(
                    "Foto",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text('Tomar foto', style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    File img = await ImagePicker.pickImage(source: ImageSource.camera);
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.image, color: Colors.white)
                  ),

                  title: Text(
                    "Galeria",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text('Tomar foto', style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
                  },
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          border: Border( right: BorderSide(width: 1.0, color: Colors.white))
                      ),
                      child: Icon(Icons.android, color: Colors.white)
                  ),

                  title: Text(
                    "WhatApp",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.yellowAccent),
                      Text('Enviar WhatSapp', style: TextStyle(color: Colors.white))
                    ],
                  ),

                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0,),
                  onTap: () async {
                    const url = 'whatsapp://send?phone=+524612279093?text=Prueba de Interacion';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
