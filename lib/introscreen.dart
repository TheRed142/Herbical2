
import 'package:flutter/material.dart';
import 'package:herbical2/login.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text('This is the IntroScreen'),
            RaisedButton(
              child: Text("GET STARTED"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));

            })
          ],
        ),

      ),
    );
  }
}