import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To POMODORO Timer!'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/pomodoro_timer.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 20.0,
                height: 100.0,
              ),
              Text(
                "Be",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 43.0,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20.0,
                height: 100.0,
              ),
              RotateAnimatedTextKit(
                  onTap: () {
                    print('Tap Event');
                  },
                  text: ["Productive", "Focused", "Smarter"],
                  textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
                  textAlign: TextAlign.start)
            ],
          ),
        ),
      ),
    );
  }
}
