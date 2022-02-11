import 'package:flutter/cupertino.dart';

class ErrorUtils {
  static Future<void> recordError(FlutterErrorDetails details) async {
    print('Flutter error caught by Crashlytics plugin:');
    // Since multiple errors can be caught during a single session, we set
    // forceReport=true.
    FlutterError.dumpErrorToConsole(details, forceReport: true);
  }
  static Future<void> printError(dynamic error, [dynamic stackTrace]) async {
    // Print the exception to the console.
    print('[Application Error]: $error');

    if(stackTrace!=null) {
      // Print the full stacktrace in debug mode.
      print(stackTrace);
    }
  }
  static String buildErrorMessage({String? message, String? location}) {
    message ??= "Ocorreu um erro, tente novamente!";

    if(location!=null) {
      return "[$location] $message";
    } else {
      return message;
    }
  }
}