import 'package:flutter/material.dart';
import 'package:flutter_component/component/imagegallery.dart';
import 'package:flutter_component/component/radioncheckbutton.dart';
import 'package:flutter_component/component/raisednbottomsheet.dart';
import 'package:flutter_component/component/textfield.dart';
import 'package:flutter_component/grid.dart';
import 'package:flutter_component/list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;

  static List<String> dynamicList = [
    "Text Field",
    "Radio Button & Check Box",
    "Raised Button & Bottom Sheet",
    "ImageView",
  ];

  List _pages = [
    ListView.builder(
      itemCount: dynamicList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Card(
              margin:
                  EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
              elevation: 5,
              shadowColor: Colors.red,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(dynamicList[index]),
              ),
            ),
            onTap: () {
              if (index == 0) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextFieldsPage();
                }));
              } else if (index == 1) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RadioCheckPage();
                }));
              } else if (index == 2) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RaisedBottomPage();
                }));
              } else if (index == 3) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImageGalleryPage();
                }));
              }
            },
          ),
        );
      },
    ),
    Text("Account"),
    Text("Account"),
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Vishal Patel"),
              accountEmail: Text("patoliavishal@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
                title: Text("List"),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ListPage();
                  }));
                }),
            ListTile(
                title: Text("Grid"),
                trailing: Icon(Icons.pages),
                onTap: () {
                  Navigator.of(context).pop();

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GridPage();
                  }));
                }),
            ListTile(
              title: Text("Share"),
              trailing: Icon(Icons.share),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Center(child: _pages[_selectedTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("My Account")),
        ],
      ),
    );
  }
}
