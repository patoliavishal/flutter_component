import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_component/login.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.yellow,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginPage("Login");
            })));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text(
                        "Flutter Component",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.white)),
                        Padding(padding: EdgeInsets.only(top: 30.0)),
                        Text(
                          "More Flutter \nMore Components",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
