import 'package:flutter/material.dart';
import 'package:herbical2/home/tabs.dart';
import 'package:herbical2/login2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sec_chooser extends StatefulWidget {
  @override
  _sec_chooserState createState() => _sec_chooserState();
}

class _sec_chooserState extends State<sec_chooser> {
  @override
  Widget build(BuildContext context) {
    var paddingval = MediaQuery.of(context).size.height * 0.30;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  //margin: const EdgeInsets.all(15.0),
                  //padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 10),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.40,
                  //color: Colors.blue,
                  child: Center(child: Text("LOGO")),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: RaisedButton(
                      child: new Text('Raw Plants',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                      //textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      //highlightColor: Colors.red,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> tabs(1)));
                      },
                    ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: RaisedButton(
                      child: new Text('Manufacturers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                      //textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      //highlightColor: Colors.red,
                      splashColor: Colors.orange,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> tabs(2)));
                        
                      },
                    ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlueAccent[100], width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: RaisedButton(
                      child: new Text('Machinery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                      //textColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      //highlightColor: Colors.red,
                      splashColor: Colors.lightBlueAccent[100],
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> tabs(3)));
                        
                      },
                    ),

              ),
              RaisedButton(
                          child: Text("Logout"),
                          splashColor: Colors.blue,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          onPressed: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            await prefs.setBool('isloggedin', false);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => login2()));
                          }),
              
            ],
          ),
        ),
      ),
    );
  }
}
