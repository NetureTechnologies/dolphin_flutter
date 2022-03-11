library dolphin_flutter;

import 'package:logger/logger.dart';

class LoggingUtils {
  static var _logger = Logger(
    printer: PrettyPrinter()
  );

  static void info(String related, String message) => _logger.i(buildMessage(related, message));
  static void warn(String related, String message) => _logger.w(buildMessage(related, message));
  static void error(String related, String message, [dynamic error, dynamic stackTrace]) => _logger.e(buildMessage(related, message), error, stackTrace);
  static void debug(String related, String message) => _logger.d(buildMessage(related, message));

  static void getXLog(String text, {bool isError = false}) {
    Future.microtask(() {
      if(isError)
        _logger.e(text);
      else
        _logger.i(text);
    });
  }

  static String buildMessage(String? related, String? message) {
    message ??= "Ocorreu um erro, tente novamente!";

    if(related!=null) {
      return "[$related] $message";
    } else {
      return message;
    }
  }
}