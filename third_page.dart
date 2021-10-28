import 'package:flutter/material.dart';
import 'fourth_page.dart';
class MyThirdPage extends StatefulWidget {
  MyThirdPage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyThirdPageState createState() => _MyThirdPageState();
}

class _MyThirdPageState extends State<MyThirdPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("The counter has been increased by 1. " + _counter.toString());
    });
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyFourthPage(title: 'This is the fourth page'))
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
              'Welcome to My Third Screen',
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
