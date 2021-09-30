import 'dart:async';

import 'package:angular/angular.dart';

@Component(
  selector: 'app-button',
  templateUrl: 'button_component.html',
  directives: [coreDirectives]
)
class ButtonComponent implements OnInit {
  @Input()
  late String text;

  @Input()
  late String color;

  final _toggleRequest =  StreamController<bool>();

  @Output()
  Stream<bool> get btnClick => _toggleRequest.stream;

  Map<String, String> currentStyles = <String, String>{};
  void setCurrentStyles() {
    currentStyles = <String, String>{
      'background-color': color
    };
  }

  void onClick() {
    _toggleRequest.add(true);
  }

  @override
  void ngOnInit() {
    setCurrentStyles();
  }

}
