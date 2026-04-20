import 'dart:math';
import 'package:html_unescape/html_unescape.dart';

class Question {
  final String question;
  final String correctAnswer;
  final List<String> allAnswers;

  Question({
    required this.question,
    required this.correctAnswer,
    required this.allAnswers,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    final unescape = HtmlUnescape();
    
    List<String> allOptions = List<String>.from(json['incorrect_answers'] ?? []);
    allOptions.add(json['correct_answer'] ?? '');
    allOptions.shuffle();

    return Question(
      question: unescape.convert(json['question'] ?? 'No question'),
      correctAnswer: unescape.convert(json['correct_answer'] ?? ''),
      allAnswers: allOptions.map((ans) => unescape.convert(ans)).toList(),
    );
  }
}