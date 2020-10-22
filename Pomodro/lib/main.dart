import './steps_pomodoro_screen.dart';

import './welcome_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './timer_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodro',
      theme: ThemeData(
        canvasColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
        ),
      ),
      // home: WelcomePage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => WelcomePage(),
        TimerMain.routeName: (ctx) => TimerMain(),
        StepsPopodoro.routeName: (ctx) => StepsPopodoro()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => WelcomePage());
      },
    );
  }
}
