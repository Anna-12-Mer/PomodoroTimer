import 'package:flutter/material.dart';

class StepsPopodoro extends StatefulWidget {
  static const routeName = '/steps-pomodoro';

  @override
  _StepsPopodoroState createState() => _StepsPopodoroState();
}

class _StepsPopodoroState extends State<StepsPopodoro> {
  List<Step> steps = [
    Step(
      title: Text('Choose a task you\'d like to get done'),
      isActive: true,
      subtitle: Text(
        'Something big, something small, something you’ve been putting off for a million years: it doesn’t matter. What matters is that it’s something that deserves your full, undivided attention',
      ),
      state: StepState.complete,
      content: Container(
        child: Text(
          'data',
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pomodoro Steps!"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              "Do more and have fun with time management",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Stepper(
                steps: steps,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
