import 'package:flutter/material.dart';
import 'package:flutter_component/home.dart';

class LoginPage extends StatefulWidget {
  final String appBarTitle;

  LoginPage(this.appBarTitle);

  @override
  _LoginPageState createState() => _LoginPageState(this.appBarTitle);
}

class _LoginPageState extends State<LoginPage> {
  String appBarTitle;
  TextEditingController textController = new TextEditingController();
  _LoginPageState(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.red[900], Colors.red[800], Colors.red[400]])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    labelText: "Email Or Username",
                                    border: OutlineInputBorder()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          child: Text("Login"),
                          textColor: Colors.white,
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomePage();
        }));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Login"),
      content: Text("Login Successfully!!!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
