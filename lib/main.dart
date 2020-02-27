import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alert Dialog App",
      theme: new ThemeData(
        primarySwatch: Colors.pink
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Alert Dialog App"),
      ),
      body: new Body(),
    );
  }
}

class Body extends StatelessWidget {

  AlertDialog dialog = new AlertDialog(
    content: new Text("him9970@gmail.com"),
    title: new Text("Himanshu Ugemuge",
      style: new TextStyle(fontSize: 18),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: RaisedButton(
          child: new Text("Click Me",
            style: new TextStyle(color: Colors.white),
          ),
          color: Colors.pink,
          onPressed: ()=> showDialog(context: context, child: dialog),
        ),
      ),
    );
  }
}
