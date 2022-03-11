library dolphin_flutter;

import 'package:logger/logger.dart';

class LoggingUtils {
  static var logger = Logger();

  static void info(String related, String message) => logger.i(buildMessage(related, message));
  static void warn(String related, String message) => logger.w(buildMessage(related, message));
  static void error(String related, String message, [dynamic error, dynamic stackTrace]) => logger.e(buildMessage(related, message), error, stackTrace);
  static void debug(String related, String message) => logger.d(buildMessage(related, message));

  static String buildMessage(String? related, String? message) {
    message ??= "Ocorreu um erro, tente novamente!";

    if(related!=null) {
      return "[$related] $message";
    } else {
      return message;
    }
  }
}