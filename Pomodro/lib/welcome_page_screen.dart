import './steps_pomodoro_screen.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  void goTopomodoro(BuildContext context) {
    Navigator.of(context).pushNamed(StepsPopodoro.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome!'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/pomodoro_timer.png"),
              fit: BoxFit.none),
        ),
        child: Container(
          margin: EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "I Know you have a lot of work, but I promise to help you CATCH UP. ",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 400,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 6,
                  ),
                  InkWell(
                    onTap: () => goTopomodoro(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Go',
                          style: TextStyle(
                            fontSize: 40,
                            // fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.red,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
