import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _LayerHome(),
    );
  }
}

class _LayerHome extends StatefulWidget {
  _LayerHome({Key? key}) : super(key: key);

  @override
  __LayerHomeState createState() => __LayerHomeState();
}

class __LayerHomeState extends State<_LayerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100.0,
        leading: new Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 2.0),
            child: new Text(
              "Home",
              style: new TextStyle(fontSize: 20.0),
            )),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 20,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          CardMenu(icon: Icons.home, teks: "Home"),
          CardMenu(icon: Icons.local_pizza, teks: "Pizza"),
          CardMenu(icon: Icons.alarm, teks: "Pizza"),
          CardMenu(icon: Icons.keyboard, teks: "Pizza")
        ],
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  CardMenu({required this.icon, required this.teks});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        child: InkWell(
          onTap: () {
            print("object");
          },
          splashColor: Colors.blue.withAlpha(30),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(icon),
              new Text(teks),
            ],
          ),
        ),
      ),
    );
  }
}
