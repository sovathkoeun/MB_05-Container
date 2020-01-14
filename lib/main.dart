import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _increment = 0;
  Color _color;
  void add() {
    setState(() {
      _increment++;
     switch(_increment) {
       case 5:
        _color = Colors.green;
        break;
      case 10:
        _color = Colors.yellow;
        break;
      case 15:
        _color = Colors.pink;
        break;
      case 20:
        _color = Colors.teal;
        break;
      case 25:
        _color = Colors.red;
        break;
      default:
        _color = Colors.blue;
        break;
     }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
          title: Text("Counter Apps"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "${_increment}",
            style: TextStyle(
              fontSize: 50.0,
              color: _color,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: add,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // backgroundColor: _color,
      ),
    );
  }
}
