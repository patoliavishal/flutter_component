import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'user.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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

  static Widget cardDemo(text) {
    return Card(
      elevation: 5,
      shadowColor: Colors.red,
      margin: EdgeInsets.only(top: 8.0, bottom: 0.0, right: 8.0, left: 8.0),
      child: Column(
        children: <Widget>[
          new Container(
            width: double.infinity,
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(text, style: TextStyle(fontSize: 22))),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List"),
        ),
        body: Container(
          child: FutureBuilder(
              future: _getUserList(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(child: Center(child: Text("Loading...")));
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: cardDemo(snapshot.data[index].title),
                        );
                      });
                }
              }),
        ));
  }
}
