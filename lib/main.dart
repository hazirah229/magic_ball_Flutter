import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue,
      ),
      body: MyBallPage(),
  ),
),);


class MyBallPage extends StatefulWidget {
  @override
  _MyBallPageState createState() => _MyBallPageState();
}

class _MyBallPageState extends State<MyBallPage> {
  int answerNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    answerNum = Random().nextInt(4)+1;
                  });
                },
                child: Image.asset('images/ball$answerNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
