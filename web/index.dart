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
import 'package:tutorial1/logger.dart';

main() async {

  new Logger('main').fine('App started');

  Intl.systemLocale = Intl.canonicalizedLocale(window.navigator.language);
  await initializeDateFormatting(Intl.systemLocale);
}
