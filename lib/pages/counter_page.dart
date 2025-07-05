import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    //setstate rebuilds the widget
    // without setstate increment will not show
    setState(() {
      _counter++;
    });
  }

  //method to decrement
  void _decrementCounter() {
    //setstate rebuilds the widget
    // without setstate increment will not show

    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  //method to reset
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tasbih Counter')),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //show message
            Text('You push the button this many times'),

            //Counter value
            Text(_counter.toString(), style: TextStyle(fontSize: 40)),

            //button to increment
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.black,
                  elevation: 5,
                ),
                child: Text('Increment'),
              ),
            ),

            //button to decrement
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.redAccent,
                  ),
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black,
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: _decrementCounter,
                child: Text('Decrement'),
              ),
            ),

            //button to reset
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _reset,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.greenAccent,
                  ),
                  //foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  overlayColor: MaterialStateProperty.all(Colors.green),
                ),

                child: Text('Reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
