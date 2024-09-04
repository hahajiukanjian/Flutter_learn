import 'package:flutter/material.dart';

class PostCreate extends StatelessWidget {

  final double? size;
  final Color? color;

  PostCreate({
    this.size = 128,
    this.color = Colors.black12,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.add_a_photo_outlined,
        size: size,
        color: color,
      ),
    );
  }
}