library dolphin_flutter;

import 'package:flutter/cupertino.dart';

class LogsUtils {
  static void console(String related, String message) {
    print("[$related] => $message");
  }
  static void debug(String related, String message) {
    debugPrint("[$related] => $message");
  }
}