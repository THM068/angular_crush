
import 'package:angular_crush/src/model/task.dart';

final mockTasks = [
  <String, dynamic>{
    "id": 1,
    "text": 'Doctors Appointment',
    "day": 'May 5th at 2:30pm',
    "reminder": true,
  },
  <String, dynamic>{
    "id": 2,
    "text": 'Meeting at School',
    "day": 'May 6th at 1:30pm',
    "reminder": true,
  },
  <String, dynamic> {
    "id": 3,
    "text": 'Food Shopping',
    "day": 'May 7th at 12:30pm',
    "reminder": false,
  },
].map((mapModel) =>
    Task(mapModel['id'], mapModel['text'], mapModel['day'],mapModel['reminder'])
).toList();