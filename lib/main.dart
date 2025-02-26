import 'package:flutter/material.dart';

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
          title: Text('Quiz'),
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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Column( children: [
            Image.asset('images/image-1.jpg'),
            SizedBox(height: 20.0),

            Text('The solar system has eight planets',
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
              onPressed: (){},
              ),
          ),
            ),
            //SizedBox(),
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
              onPressed: (){},
              ),
          ),
            ),
      ],
    );
  }
}