import 'package:flutter/material.dart';
import 'package:herbical2/sectionchooser.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login2 extends StatefulWidget {
  @override
  _login2State createState() => _login2State();
}

class _login2State extends State<login2> {

  final myController = TextEditingController();
  final myController1 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    var email = "";
    var password = "";
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text('This is the Login page'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email'),
                  controller: myController,
                  onChanged: (text) {
                    print(" text field:  ${myController.text}");
                   
                  },
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password'),
                  controller: myController1,
                  onChanged: (text) {
                    print(" text field:  ${myController1.text}");
                   
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200.0,
                height: 50.0,
                child: new RaisedButton(
                  child: new Text('Login Succesful'),
                  //textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  //highlightColor: Colors.red,
                  splashColor: Colors.green,
                  onPressed: () async {
                    email = myController.text;
                    password = myController1.text;
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('isloggedin', true);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> sec_chooser()));
                    print(email);
                    print(password);

                    myController1.clear();
                    myController.clear();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200.0,
                height: 50.0,
                child: new RaisedButton(
                  child: new Text('Login Failed'),
                  //textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  //highlightColor: Colors.red,
                  splashColor: Colors.red,
                  onPressed: () {
                    return showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text("Login Error"),
                        content: Text("Please Enter Correct Credentials"),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text("okay"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}