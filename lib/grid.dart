import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'user.dart';

class GridPage extends StatefulWidget {
  GridPage({Key key}) : super(key: key);

  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  static Future<List<User>> _getUserList() async {
    var data = await http.get("https://jsonplaceholder.typicode.com/photos");
    var jsonData = json.decode(data.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u["albumId"], u["id"], u["title"], u["url"]);

      users.add(user);
    }
    return users;
  }

  static Widget cardGridDemo(user) {
    return Card(
        elevation: 5,
        shadowColor: Colors.red,
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.network(
                user.url,
                width: double.infinity,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text(user.title, style: TextStyle(fontSize: 16))),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid"),
      ),
      body: Container(
        child: FutureBuilder(
            future: _getUserList(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(child: Center(child: Text("Loading...")));
              } else {
                return new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: GridView.builder(
                      itemCount: snapshot.data.length,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return new GestureDetector(
                          child: cardGridDemo(snapshot.data[index]),
                        );
                      },
                    ));
              }
            }),
      ),
    );
  }
}
