import 'package:flutter/material.dart';

void main() {
  runApp(OwnStateManagingWidget());
}

class OwnStateManagingWidget extends StatefulWidget {
  @override
  _OwnStateManagingWidgetState createState() => _OwnStateManagingWidgetState();
}

class _OwnStateManagingWidgetState extends State<OwnStateManagingWidget> {
  /// let's define the boolean value first

  bool _stateChanged = false;

  /// let's create a function that will define the setState() method
  /// it'll change the state of this widget only
  ///
  void _changeState() {
    setState(() {
      _stateChanged = !_stateChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    /// we'll use GestureDetector so that we can tap a box that will turn green as
    /// the state is changed
    return MaterialApp(
      title: 'Our App',
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: _changeState,
        child: Container(
          child: Center(
            child: Text(
              _stateChanged ? "State Changed" : "State Unchanged",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textDirection: TextDirection.ltr,
            ),
          ),
          decoration:
              BoxDecoration(color: _stateChanged ? Colors.green : Colors.red),
        ),
      ),
    );
  }
}
