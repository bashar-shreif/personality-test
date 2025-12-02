import 'package:personality_test/models/answers.dart';

class Question {
  final String question;
  final List<Answer> answers;

  const Question(this.question, this.answers);
}
