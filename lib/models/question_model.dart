// class QuestionModel {
//   String? question;
//   Map<String, bool>? answer;

//   // Creating the constructor
//   QuestionModel(this.question, this.answer);
// }

class Question {
  int id;
  int answer;
  String question;
  List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

