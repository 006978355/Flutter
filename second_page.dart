import 'package:flutter/material.dart';
import '../StudioProjects/flutter_bootstrap/lib/third_page.dart';

class MySecondPage extends StatefulWidget {
  MySecondPage( {required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("The counter has been increased by 1. " + _counter.toString());
    });
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyThirdPage(title: 'This is the third page'))
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
              'Welcome to My Second Screen',
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
