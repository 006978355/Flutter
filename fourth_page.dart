import 'package:flutter/material.dart';

class MyFourthPage extends StatefulWidget {
  MyFourthPage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyFourthPageState createState() => _MyFourthPageState();
}

class _MyFourthPageState extends State<MyFourthPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("The counter has been increased by 1. " + _counter.toString());
    });
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: 'This is the first page'))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to My Fourth Screen',
            ),
            Text(
              'This is for testing purposes',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
