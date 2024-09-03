import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: const TextSpan(
          text: '问渠哪得清如许，',
          style: TextStyle(
            fontSize: 22.0,
          ),
          children: [
            TextSpan(
              text: '为有源头',
            ),
            TextSpan(
              text: '活水来',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
