library dolphin_flutter;

import 'package:intl/intl.dart';

class DateTimeUtils {
  static String getTodayDate() {
    String formattedDate = "";
    try {
      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd');
      formattedDate = formatter.format(now);
    } catch (e) {
      throw new Exception("Error - $e");
    }

    return (formattedDate);
  }

  static String getTodayDatetime() {
    String formattedDate = "";
    try {
      var now = new DateTime.now();
      var formatter = new DateFormat('yyyy-MM-dd').add_Hms();
      formattedDate = formatter.format(now);
    } catch (e) {
      throw new Exception("Error - $e");
    }

    return (formattedDate);
  }

  static String getTodayDatetimeFormated() {
    String formattedDate = "";
    try {
      var now = new DateTime.now();
      var formatter = new DateFormat('dd/MM/yyyy').add_Hms();
      formattedDate = formatter.format(now);
    } catch (e) {
      throw new Exception("Error - $e");
    }

    return (formattedDate);
  }

  static String getMonthFirstDate() {
    String formattedDate = "";
    try {
      var now = new DateTime.now();
      var firstDay = new DateTime(now.year, now.month, 1);
      var formatter = new DateFormat('yyyy-MM-dd');
      formattedDate = formatter.format(firstDay);

    } catch(e) {
      throw new Exception("Error - $e");
    }

    return (formattedDate);
  }

  static String getThirtyDaysAgo() {
    String formattedDate = "";
    try {
      var now = new DateTime.now();
      var thirtyDaysAgo = now.subtract(Duration(days: 30));
      var formatter = new DateFormat('yyyy-MM-dd');
      formattedDate = formatter.format(thirtyDaysAgo);

    } catch(e) {
      throw new Exception("Error - $e");
    }

    return (formattedDate);
  }

  static String apiFormat(DateTime date) {
    return DateFormat("yyyy-MM-dd").format(date);
  }

  static String uiFormat(DateTime date) {
    return DateFormat("dd/MM/yyyy").format(date);
  }

  static String apiFormatWithTime(DateTime date) {
    return DateFormat("yyyy-MM-dd'T'HH:mm:ss'.000Z'").format(date);
  }

  static String brToISOFormat(String brDate) {
    List<String> divided = brDate.split(' ');
    List<String> dateDivided = divided[0].split('/');
    return "${dateDivided[2]}-${dateDivided[1]}-${dateDivided[0]}T${divided.length > 1 ? divided[1] : "00"}:00";
  }

  static String dateToBrString(DateTime date) {
    if(date==null)
      return null;

    return DateFormat("dd/MM/yyyy").format(date);
  }

  static String fromBackendFormat(DateTime date) {
    return DateFormat("dd/MM/yyyy").format(date);
  }

  static String formatFromStringToDate(String date) {
    return DateFormat("dd/MM/yyyy").format(DateTime.parse(date));
  }

  static String formatFromStringToDatetime(String date) {
    return DateFormat("dd/MM/yyyy").add_Hms().format(DateTime.parse(date));
  }

  static DateTime formatFromStringBackendDateTimeApi(String date) {
    return DateFormat("yyyy-MM-dd'T'HH:mm:ss'.000Z'").parse(date);
  }


  static DateTime brToDate(String brDate) {
    List<String> dateDivided = brDate.split('/');
    return DateTime(int.parse(dateDivided[2]), int.parse(dateDivided[1]), int.parse(dateDivided[0]));
  }

  static String smartBackendDateTimeConversion(String dateTime) {
    if(dateTime.contains("Z"))
      return dateToBrString(formatFromStringBackendDateTimeApi(dateTime));
    else
      return dateTime;
  }

  static bool isDateInTheFuture(DateTime date) {
    return date.isAfter(DateTime.now());
  }

  static DateTime oneYearAgo() {
    final DateTime now = DateTime.now();
    return DateTime(now.year - 1, now.month, now.day);
  }
}