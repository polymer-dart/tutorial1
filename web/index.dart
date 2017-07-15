@entryPoint
import 'package:polymerize_common/init.dart';

// ignore: UNUSED_IMPORT
import 'package:tutorial1/my_style.dart';
// ignore: UNUSED_IMPORT
import 'package:html5/html.dart';
// ignore: UNUSED_IMPORT
import 'package:tutorial1/my_component.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

main() async {
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

  Intl.systemLocale = Intl.canonicalizedLocale(window.navigator.language);
  await initializeDateFormatting(Intl.systemLocale);
}
