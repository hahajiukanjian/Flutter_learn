import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {

  final double size;
  final Color color;

  UserProfile({
    this.size = 128,
    this.color = Colors.black12,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Icon(
      Icons.account_circle_outlined,
      size: size,
      color: color,
    ),
    );
  }
}