import 'package:flutter/material.dart';

import './exercises.dart';

class ExerciseManager extends StatefulWidget {
  final String startingExercise;

  ExerciseManager(this.startingExercise) {
    print('[ExercisesManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ExercisesManager Widget] createState()');
    return _ExerciseManagerState();
  }
}

class _ExerciseManagerState extends State<ExerciseManager> {
  List<String> _exercises = [];

  @override
  void initState() {
    print('[ExercisesManager State] initState()');
    _exercises.add(widget.startingExercise);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('[ExercisesManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _exercises.add('Advanced Exercise');
              });
            },
            child: Text('Add Exercise'),
          ),
        ),
        Exercises(_exercises)
      ],
    );
  }
}
