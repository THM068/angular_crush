import 'package:angular/angular.dart';
import 'package:angular_crush/components/button/button_component.dart';

@Component(
  selector: 'app-header',
  templateUrl: 'header_component.html',
  styleUrls: ['header_component.css'],
  directives: [ButtonComponent]
)
class HeaderComponent {
  String title = 'Task Tracker';

  void toggleAddTask() {
    print("toggleAddTask called");
  }
}
