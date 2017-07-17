import 'package:polymer_element/polymer_element.dart';
import 'package:tutorial1/logger.dart';

// ignore: UNUSED_IMPORT
import 'package:tutorial1/my_style.dart';

final Logger _logger = new Logger('my-component');

@PolymerRegister('my-component', template: 'my_component.html')
abstract class MyComponent extends PolymerElement {
  String title;
  MyComponent() {
    _logger.fine('MyComponent created!');
  }
}
