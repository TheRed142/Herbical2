import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:herbical2/login2.dart';
import 'package:herbical2/sectionchooser.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with AfterLayoutMixin<login>{

  Future checklogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isloggedin = (prefs.getBool('isloggedin') ?? false);
    

    if (isloggedin) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new sec_chooser()));
    } else {
      
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new login2()));
    }
  }
  
   @override
  void afterFirstLayout(BuildContext context) => checklogin();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Column(
          children: [
            new CircularProgressIndicator(
              backgroundColor: Colors.green,

            ),
            Text("Loading"),
          ],
        ),
      ),
    );
  }

 
}
