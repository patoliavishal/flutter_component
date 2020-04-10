import 'package:flutter/material.dart';

class RaisedBottomPage extends StatefulWidget {
  RaisedBottomPage({Key key}) : super(key: key);

  @override
  _RaisedBottomPageState createState() => _RaisedBottomPageState();
}

class _RaisedBottomPageState extends State<RaisedBottomPage> {
  openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
                child: _onBottomSheet(),
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)))),
          );
        });
  }

  Column _onBottomSheet() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo),
          title: Text("Photos"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.camera),
          title: Text("Camera"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.videocam),
          title: Text("Video"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raised Button & Bottom Sheet"),
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(16.0),
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  openBottomSheet(context);
                },
                child: Text("Submit"),
              )),
          Container(
              margin: EdgeInsets.all(16.0),
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  openBottomSheet(context);
                },
                child: Text("Save"),
                color: Colors.red,
                textColor: Colors.white,
              )),
          Container(
              margin: EdgeInsets.all(16.0),
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  openBottomSheet(context);
                },
                child: Text("Update"),
                color: Colors.red,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
              ))
        ],
      ),
    );
  }
}
