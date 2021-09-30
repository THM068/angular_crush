class Task {
  int? id;
  String text;
  String day;
  bool reminder;

  Task(this.id, this.text, this.day, this.reminder);

  static Task fromJson(Map<String,dynamic> model) {
    return Task(
      model['id'],
      model['text'],
      model['day'],
      model['reminder'],
    );
  }
}