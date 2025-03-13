import 'package:flutter/material.dart';
import 'package:quizz/app_brain.dart';

AppBrain appBrain = AppBrain();
void main() {
  runApp(quizApp());
}

class quizApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 237, 222),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 219, 118, 50),
          title: Text('Quiz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: quizPage(
          
          ),
        ),
      ),
    );
  }
}
class quizPage extends StatefulWidget {

  @override
  State<quizPage> createState() => _quizPageState();
}

class _quizPageState extends State<quizPage> {
  
  List<Padding> answerResult = [];

  void checkAnswer(bool picked){
    bool correctAnswer = appBrain.getQuestionAnswer();
    setState(() {
      if (picked == correctAnswer) {
        answerResult.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(Icons.thumb_up, color: Colors.green),
          ),
        );
      } else {
        answerResult.add(
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(Icons.thumb_down, color: Colors.red),
          ),
        );
      }

      appBrain.nextQuestion();
    });

  }
 
  
  @override

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answerResult,
          ),
        Expanded(
          flex: 5,
          child: Column( children: [
            Image.asset(appBrain.getQuestionImage()),
            SizedBox(height: 20.0),

            Text(appBrain.getQuestionText(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
            ),
            ),
          ],

          ), 
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 76, 175, 80), 
            ),
              child: Text('Right',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                checkAnswer(true);
               
              },
              ),
          ),
            ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 211, 47, 47), 
            ),
              child: Text('Wrong',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
              ),
              ),
              onPressed: (){
                checkAnswer(false);
              },
              ),
          ),
            ),
      ],
    );
  }
}