import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color;

  @override
  void initState() {
    color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color = Color((Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0);
        });
      },
      child: Scaffold(
          backgroundColor: color,
          body: Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..shader = ui.Gradient.linear(
                      const Offset(0, 50),
                      const Offset(150, 20),
                      <Color>[
                        Colors.white,
                        Colors.black,
                      ],
                    )),
            ),
          )),
    );
  }
}
