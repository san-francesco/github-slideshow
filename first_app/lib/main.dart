import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // autocomplete with createState
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    // wrap code where data is changed in state and shown in the UI
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // column is an invisible layout widget
        // pass a list of widgets to layout in a column
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('10'),
              onPressed: () => print('Right answer chosen!'),
            ),
            ElevatedButton(
              child: Text('11'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('12'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
