import 'package:quizz/question.dart';

 class AppBrain{

    int _questionNumber = 0;
    final List<Question> _questionGroup = [
    Question(
      'The solar system has eight planets',
      'images/image-1.jpg',
      true
    ),
    Question(
      'Cats are carnivorous animals',
      'images/image-2.jpg',
      true
    ),
    Question(
      'China is located in the African continent',
      'images/image-3.jpg',
      false
    ),
    Question(
      'The Earth is flat, not spherical',
      'images/image-4.jpg',
      false
    ),
    Question(
      'A human can survive without eating meat',
      'images/image-5.jpg',
      true
    ),
    Question(
      'The sun revolves around the Earth, and the Earth revolves around the moon',
      'images/image-6.jpg',
      false
    ),
    Question(
      'Animals do not feel pain',
      'images/image-7.jpg',
      false
    ),
  ];

  String getQuestionText(){

    return _questionGroup[_questionNumber].questionText;
  }

  String getQuestionImage(){

    return _questionGroup[_questionNumber].questionImage;
  }

  bool getQuestionAnswer(){

    return _questionGroup[_questionNumber].questionAnswer;
  }

  void nextQuestion(){
    if(_questionNumber < _questionGroup.length - 1){
      _questionNumber++;
    }
  }



}