import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_crush/src/model/task.dart';

@Component(
  selector: 'app-task-item',
  templateUrl: 'task_item_component.html',
  styleUrls: ['task_item_component.css'],
  directives: [coreDirectives]
)
class TaskItemComponent implements OnInit {
  Map<String, String> currentStyles = <String, String>{ 'color': 'red'};

  Map<String, bool> currentClasses = <String, bool>{};

  void setCurrentClasses() {
    currentClasses = <String, bool>{
      'reminder': task.reminder,
    };
  }

  @Input()
  late Task task;

  final _onDeleteTaskRequest =  StreamController<Task>();
  final _onToggleReminder = StreamController<Task>();

  @Output()
  Stream<Task> get OnToggleReminder => _onToggleReminder.stream;

  @Output()
  Stream<Task> get onDeleteTask => _onDeleteTaskRequest.stream;


  void onDelete(Task task) {
    _onDeleteTaskRequest.add(task);
  }

  @override
  void ngOnInit() {
    setCurrentClasses();
  }

  void onToggle(Task task) {
    _onToggleReminder.add(task);
    setCurrentClasses();
  }

}
