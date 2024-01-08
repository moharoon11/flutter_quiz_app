class QuizQuestion {
  const QuizQuestion(
    this.text,
    this.answers,
  );

  final String text;
  final List<String> answers;

  List<String> getSuffledList() {
    List<String> shuffeledList = List.of(answers);
    shuffeledList.shuffle();
    return shuffeledList;
  }
}
