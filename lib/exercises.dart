import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  final List<String> exercises;

  Exercises(this.exercises) {
    print('[Exercises Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Exercise Widget] build()');
    return Column(
      children: exercises
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    // Image.asset('assets/runningtwo.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
