import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [
    // const Icon(
    //   Icons.check,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.close,
    //   color: Colors.green,
    // ),
    // const Icon(
    //   Icons.check,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.check,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.check,
    //   color: Colors.red,
    // ),
    // const Icon(
    //   Icons.check,
    //   color: Colors.red,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  padding: const EdgeInsets.all(1.0),
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {
                setState(() {
                  scoreKeeper.add(
                    Icon(Icons.check, color: Colors.green),
                  );
                });
              },
              child: const Text(
                'True',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  padding: const EdgeInsets.all(1.0),
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {
                setState(() {
                  scoreKeeper.add(
                    Icon(Icons.close, color: Colors.red),
                  );
                });
              },
              child: const Text(
                'False',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  } // Widget
} //Class

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
