import 'package:flutter/material.dart';

class RadioCheckPage extends StatefulWidget {
  RadioCheckPage({Key key}) : super(key: key);

  @override
  _RadioCheckPageState createState() => _RadioCheckPageState();
}

class _RadioCheckPageState extends State<RadioCheckPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Radio Button & Check Box"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.red,
                    
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
