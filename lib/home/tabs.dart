import 'package:flutter/material.dart';
class tabs extends StatefulWidget {
  final int section;
  tabs(this.section);
  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Herbical"),
              
            ],
          ),
          actions: <Widget>[
          IconButton(
            
              icon: Icon(
                Icons.person_rounded,
              ),
              onPressed: () {
              print("Hello");
             }),
             IconButton(
              icon: Icon(
                Icons.notifications,
              ),
              onPressed: () {
              print("Hello");
             }),
        ],
          backgroundColor: Colors.green[800],
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
                child: FittedBox(
              child: Container(
                child: Text("TRADE"),
              ),
            )),
            Tab(
              child: Column(
                children: [
                  Text("MY"),
                  FittedBox(child: Container(child: Text("POSTS")))
                ],
              ),
            ),
            Tab(
              icon: Icon(Icons.group),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ]),
        ),
      ),
      
    );
  }
}