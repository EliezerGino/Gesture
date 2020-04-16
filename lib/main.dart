import 'package:flutter/material.dart';

void main () => runApp(MyApp());

@override
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: BodyWidget(),

    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {

  Color color = Colors.blue;
  
  void mycolor(){
    setState(() {
        color = ( color == Colors.blue) ? Colors.red : Colors.blue;
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        mycolor();
      },
      child: Container(
        color: color,
      ),
    );
  }
}