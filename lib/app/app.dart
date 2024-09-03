import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '半亩方塘一鉴开，天光云影共徘徊。问渠哪得清如许，为有源头活水来。',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 22.0,
        ),
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
