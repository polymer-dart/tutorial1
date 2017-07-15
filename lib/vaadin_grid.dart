import 'package:polymer_element/polymer_element.dart';

@PolymerRegister('vaadin-grid',native:true)
@BowerImport(name:'vaadin-grid',ref:'vaadin/vaadin-grid#v3.0.0',import:'vaadin-grid/vaadin-grid.html')
abstract class VaadinGrid extends PolymerElement {

}


@PolymerRegister('vaadin-grid-column',native:true)
@BowerImport(name:'vaadin-grid',ref:'vaadin/vaadin-grid#v3.0.0',import:'vaadin-grid/vaadin-grid-column.html')
abstract class VaadinGridColumn extends PolymerElement {

}
