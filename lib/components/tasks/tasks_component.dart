
import 'package:angular/angular.dart';
import 'package:angular_crush/components/task-item/task_item_component.dart';
import 'package:angular_crush/src/model/task.dart';
import 'package:angular_crush/src/services/task_service.dart';
import 'package:dio/dio.dart';
@Component(
  selector: 'app-tasks',
  templateUrl: 'tasks_component.html',
  styleUrls: ['tasks_component.css'],
  directives: [coreDirectives, TaskItemComponent ],
  providers: [ClassProvider(Dio), ClassProvider(TaskService)]
)
class TasksComponent implements OnInit {
  final TaskService taskService;
  List<Task> tasks = [];

  TasksComponent(this.taskService);

  @override
  void ngOnInit() {
    this.taskService.getTasks().asStream().listen((event) {
      tasks = event;
    });
  }

  void deleteTask(Task task) {
    this.taskService.deleteTask(task).asStream().listen((event) {
      this.tasks = this.tasks.where((element) => element.id != event.id).toList();
    });
  }

  void toggleReminder(Task task) {
    task.reminder = !task.reminder;
  }


}
