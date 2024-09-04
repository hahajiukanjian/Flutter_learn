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
        decoration: BoxDecoration(
            color: Colors.deepOrange,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.yellow,
                Colors.blue,
                Colors.purpleAccent,
                Colors.cyan,
              ],
            ),
            image: const DecorationImage(
              image: NetworkImage(
                'https://resources.ninghao.net/images/IMG_2626.JPG',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.blue,
                BlendMode.softLight,
              ),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(35),
            ),
            border: Border.all(
              color: Colors.blue,
              width: 5,
              style: BorderStyle.solid,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.blue,
                offset: Offset(5, 20),
                blurRadius: 30,
              ),
            ]),
        child: Image.asset(
          'assets/images/logo.png',
          width: 96,
        ),
      ),
    );
  }
}
