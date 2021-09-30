import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_crush/src/mocks/mock_tasks.dart';
import 'package:angular_crush/src/model/task.dart';
import 'package:rxdart/rxdart.dart';

class TaskService implements OnInit {
  var _controller =  StreamController<List<Task>>.broadcast();

  Stream<List<Task>> getTasks()  async* {
    yield mockTasks;
  }

  @override
  void ngOnInit() {
    _controller.add(mockTasks);
  }
}