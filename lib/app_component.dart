import 'package:angular/angular.dart';
import 'package:angular_crush/components/header/header_component.dart';
import 'package:angular_crush/components/tasks/tasks_component.dart';
@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  directives: [HeaderComponent, TasksComponent]


)
class AppComponent {

}
