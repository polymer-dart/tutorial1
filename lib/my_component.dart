import 'package:polymer_element/polymer_element.dart';
import 'package:tutorial1/logger.dart';

// ignore: UNUSED_IMPORT
import 'package:tutorial1/my_style.dart';
// ignore: UNUSED_IMPORT
import 'package:tutorial1/vaadin_grid.dart';

final Logger _logger = new Logger('my-component');

class MyItem {
  final String col1;
  final String col2;

  MyItem({this.col1,this.col2});
}

@PolymerRegister('my-component', template: 'my_component.html')
abstract class MyComponent extends PolymerElement {
  String title;

  List<MyItem> myItems;

  MyComponent() {
    _logger.fine('MyComponent created!');
  }

  ready() {
    super.ready();
    _logger.fine('MyComponent ready');
    myItems = [
      new MyItem(col1:'Pizza',col2:'Margherita'),
      new MyItem(col1:'Caffè',col2:'Espresso'),
      new MyItem(col1:'Formaggio',col2:'Gorgonzola'),
    ];
  }
}
