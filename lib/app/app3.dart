import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.deepPurpleAccent,
        // transform: Matrix4.rotationZ(0.5),
        // transformAlignment: Alignment.topRight,
        padding: const EdgeInsets.all(60),
        alignment: Alignment.topCenter,
        width: 350,
        height: 350,
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.blue,
              Colors.purpleAccent,
              Colors.cyan,
            ],
          ),
        ),
        child: Image.asset(
          'assets/images/logo.png',
          width: 96,
        ),
      ),
    );
  }
}
