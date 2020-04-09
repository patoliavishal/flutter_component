import 'package:flutter/material.dart';

class TextFieldsPage extends StatefulWidget {
  TextFieldsPage({Key key}) : super(key: key);

  @override
  _TextFieldsPageState createState() => _TextFieldsPageState();
}

class _TextFieldsPageState extends State<TextFieldsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("TextFields"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.red,
                  margin: EdgeInsets.only(
                      top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.home), labelText: "Enter Name"),
                      autocorrect: false,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.red,
                    margin: EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Enter Name",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
