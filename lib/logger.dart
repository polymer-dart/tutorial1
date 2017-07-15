export 'package:logging/logging.dart';
import 'package:logging/logging.dart';
import 'package:polymer_element/polymer_element.dart';
import 'package:html5/html.dart';


@init
void initLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (record.level>=Level.SEVERE) {
      error(record.stackTrace);
    } else if (record.level>=Level.WARNING) {
      warn(record.stackTrace);
    } else {
      log(record.message);
    }

  });

}
