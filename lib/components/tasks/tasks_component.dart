import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_crush/components/task-item/task_item_component.dart';
import 'package:angular_crush/src/mocks/mock_tasks.dart';
import 'package:angular_crush/src/model/task.dart';
import 'package:angular_crush/src/services/task_service.dart';
@Component(
  selector: 'app-tasks',
  templateUrl: 'tasks_component.html',
  styleUrls: ['tasks_component.css'],
  directives: [coreDirectives, TaskItemComponent ],
  providers: [ClassProvider(TaskService)]
)
class TasksComponent implements OnInit, OnDestroy {
  late StreamSubscription<List<Task>> _taskSubscription;
  final TaskService taskService;
  var tasks = [];

  TasksComponent(this.taskService);
  
  @override
  void ngOnInit() {
    _taskSubscription = this.taskService.getTasks().listen((event) {
      print(event);
      print("abc");
      this.tasks = event;
    });
  }

  @override
  void ngOnDestroy() {
    _taskSubscription.cancel();
  }
}
