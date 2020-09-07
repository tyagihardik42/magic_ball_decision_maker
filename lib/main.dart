import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(5) + 1 ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
           margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Got a question? Click the ball!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 150.0),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: FlatButton(
              onPressed: (){
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ],
    );

  }
}
