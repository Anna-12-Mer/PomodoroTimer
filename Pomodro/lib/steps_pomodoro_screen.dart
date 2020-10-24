import 'package:Pomodro/timer_main.dart';
import 'package:flutter/material.dart';

class StepsPopodoro extends StatefulWidget {
  static const routeName = '/steps-pomodoro';

  @override
  _StepsPopodoroState createState() => _StepsPopodoroState();
}

class _StepsPopodoroState extends State<StepsPopodoro> {
  int _currentStep = 0;

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
        title: Text('Choose a task you\'d like to get done'),
        isActive: _currentStep >= 0,
        state: StepState.complete,
        content: Container(
          child: Center(
            child: Image.network(
                'https://lh3.googleusercontent.com/proxy/OgZZ0BjZUJyikkkdXKQOac_w2DKVFzAj7lwRlv89BL60-_tlnoYg3lT5mKg_aP4xMBX5oC25Q-28Suc_jjRcl7d3ESF_Cn_gkd8VlymtX5X09Wt8TMFc8xAlh4cx1bO-uw9u-sMVHyDP3CF7OiJtXCBLBW0ppF80'),
          ),
        ),
      ),
      Step(
        title: Text('Set the Pomodoro for 25 minutes'),
        content: Center(
          child: Image.network(
            'https://st4.depositphotos.com/1001189/19928/v/380/depositphotos_199285166-stock-illustration-minutes-timer-icon-isolated-white.jpg',
            fit: BoxFit.cover,
            width: 200,
          ),
        ),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text('Work on the task until the Pomodoro rings'),
        content: Center(
          child: Image.network(
            'https://webstockreview.net/images/clipart-box-office-3.png',
            fit: BoxFit.cover,
            width: 150,
          ),
        ),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text('Put a checkmark on a paper when 25 min ended'),
        content: Center(
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Red_Checkmark.svg/1200px-Red_Checkmark.svg.png',
            fit: BoxFit.cover,
            width: 150,
          ),
        ),
        isActive: _currentStep >= 3,
      ),
      Step(
        title: Text('Take a short break'),
        content: Center(
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQJG9MCOn8d_nB4Miq1MLUAlzRiWoCzVIGXnQ&usqp=CAU',
            fit: BoxFit.cover,
            width: 150,
          ),
        ),
        isActive: _currentStep >= 4,
      ),
      Step(
        title: Text('Every 4 pomodoros, take a longer break'),
        content: Center(
          child: Image.network(
            'https://renewedlearning.com/wp-content/uploads/2020/08/Pomodoro-Set-completed-1024x250.png',
            fit: BoxFit.cover,
            width: 250,
          ),
        ),
        isActive: _currentStep >= 5,
      ),
    ];
    return _steps;
  }

  void goTopomodoro(BuildContext context) {
    Navigator.of(context).pushNamed(TimerMain.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pomodoro Steps!"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stepper(
            steps: _mySteps(),
            currentStep: _currentStep,
            onStepTapped: (step) {
              setState(() {
                this._currentStep = step;
              });
            },
            onStepContinue: () {
              setState(() {
                if (this._currentStep < this._mySteps().length - 1) {
                  this._currentStep = this._currentStep + 1;
                } else {
                  goTopomodoro(context);
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (this._currentStep > 0) {
                  this._currentStep = this._currentStep - 1;
                }  else {
                  this._currentStep = 0;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
