import 'package:angular/angular.dart';
import 'package:angular_crush/src/model/task.dart';

@Component(
  selector: 'app-task-item',
  templateUrl: 'task_item_component.html',
  styleUrls: ['task_item_component.css'],
  directives: [coreDirectives]
)
class TaskItemComponent {
  Map<String, String> currentStyles = <String, String>{ 'color': 'red'};
  @Input()
  late Task task;
}
