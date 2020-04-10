import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RadioCheckPage extends StatefulWidget {
  RadioCheckPage({Key key}) : super(key: key);

  @override
  _RadioCheckPageState createState() => _RadioCheckPageState();
}

class _RadioCheckPageState extends State<RadioCheckPage> {
  String radioItem = '';
  bool isChecked = false;
  bool isCheckedTile = false;
  String resultHolder = '';

  showToast(selectValue) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: "You select $selectValue",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        timeInSecForIosWeb: 2,
        textColor: Colors.white,
        webBgColor: "#e74c3c",
        fontSize: 16.0);
  }

  showSnackBar(context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Show Snackbar'),
      duration: Duration(seconds: 3),
    ));
  }

  void toggleCheckbox(bool value) {
    if (isChecked == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
        resultHolder = 'Yes';
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;
        resultHolder = 'No';
      });
    }
  }

  void toggleCheckboxTile(bool value) {
    if (isCheckedTile == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isCheckedTile = true;
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isCheckedTile = false;
      });
    }
  }

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
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Select Gender"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              groupValue: radioItem,
                              value: 'Male',
                              activeColor: Colors.red,
                              onChanged: (val) {
                                setState(() {
                                  radioItem = val;
                                  showToast(radioItem);
                                });
                              },
                            ),
                            Text("Male"),
                            Radio(
                              groupValue: radioItem,
                              value: 'Female',
                              activeColor: Colors.red,
                              onChanged: (val) {
                                setState(() {
                                  radioItem = val;
                                  showToast(radioItem);
                                });
                              },
                            ),
                            Text("Female"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Select Animal"),
                        ),
                        RadioListTile(
                            value: "Cow",
                            groupValue: radioItem,
                            title: Text("Cow"),
                            activeColor: Colors.red,
                            onChanged: (val) {
                              setState(() {
                                radioItem = val;
                                showToast(radioItem);
                              });
                            }),
                        RadioListTile(
                            value: "Buffalo",
                            groupValue: radioItem,
                            title: Text("Buffalo"),
                            activeColor: Colors.red,
                            onChanged: (val) {
                              setState(() {
                                radioItem = val;
                                showToast(radioItem);
                              });
                            }),
                        RadioListTile(
                            value: "Giraffe",
                            groupValue: radioItem,
                            title: Text("Giraffe"),
                            activeColor: Colors.red,
                            onChanged: (val) {
                              setState(() {
                                radioItem = val;
                                showToast(radioItem);
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Select color is red"),
                        ),
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            toggleCheckbox(value);
                          },
                          activeColor: Colors.red,
                          checkColor: Colors.white,
                          tristate: false,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Select Any Colors")),
                        CheckboxListTile(
                          value: isCheckedTile,
                          title: Text("Red"),
                          onChanged: (value) {
                            toggleCheckboxTile(value);
                          },
                          activeColor: Colors.red,
                          checkColor: Colors.white,
                        ),
                        CheckboxListTile(
                          value: isCheckedTile,
                          title: Text("Green"),
                          onChanged: (value) {
                            toggleCheckboxTile(value);
                          },
                          activeColor: Colors.red,
                          checkColor: Colors.white,
                        ),
                        CheckboxListTile(
                          value: isCheckedTile,
                          title: Text("Blue"),
                          onChanged: (value) {
                            toggleCheckboxTile(value);
                          },
                          activeColor: Colors.red,
                          checkColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
