library dolphin_flutter;

import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:intl/intl.dart';
import 'package:quiver/strings.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/digital_data.dart';

class StringUtils {
  static RegExp regexNumberOnly = RegExp(r'[^\d]');
  static RegExp regexWhitespaces = RegExp(r"\s+\b|\b\s| ");

  static String enumName(String enumToString) {
    List<String> paths = enumToString.split(".");
    return paths[paths.length - 1];
  }

  static String centsToReais(num value, [int digitsLimit = 0]) {
    return "R\$ " + centsToReaisNumbersOnly(value, digitsLimit);
  }

  static String centsToReaisNoSymbol(num value, [int digitsLimit = 0]) {
    return centsToReaisNumbersOnly(value, digitsLimit);
  }

  // Remove negative
  static String centsToReaisAbsolute(num value, [int digitsLimit = 0]) {
    return "R\$ " + centsToReaisNumbersOnly(value.abs(), digitsLimit);
  }

  static String centsToReaisNumbersOnly(num value, [int digitsLimit = 0]) {
    final money = NumberFormat("#,##0.00", "pt_BR");

    value = value / 100;

    var formatted = money.format(value);
    if (digitsLimit > 0 && formatted.length > digitsLimit)
      formatted = formatted.substring(formatted.length - digitsLimit);

    return formatted;
  }

  static String formatToReais(num value, [int digitsLimit = 0]) {
    return "R\$ " + formatToReaisNumbersOnly(value, digitsLimit);
  }

  static String formatToReaisNumbersOnly(num value, [int digitsLimit = 0]) {
    final money = NumberFormat("#,##0.00", "pt_BR");

    var formatted = money.format(value);
    if (digitsLimit > 0 && formatted.length > digitsLimit)
      formatted = formatted.substring(formatted.length - digitsLimit);

    return formatted;
  }

  static String formatCpf(String value) {
    return CPFValidator.format(value);
  }

  static String formatCnpj(String value) {
    return CNPJValidator.format(value);
  }

  static String formatCpfOrCnpj(String value) {
    if(isEmpty(value)) return value;

    if (value.length <= 11)
      return formatCpf(value);
    else
      return formatCnpj(value);
  }

  static String formatPhoneNumber(String value) {
    if (value.length <= 10)
      return formatTelephoneNumber(value);
    else
      return formatCellphoneNumber(value);
  }

  static String formatTelephoneNumber(String value) {
    const STRIP_REGEX = r'[^\d]';

    RegExp regExp = RegExp(r'^(\d{2})(\d{4})(\d{4})$');

    RegExp regexStrip = RegExp(STRIP_REGEX);
    value = value.replaceAll(regexStrip, "");

    return value.replaceAllMapped(
        regExp, (Match m) => "(${m[1]}) ${m[2]}-${m[3]}");
  }

  static String formatCellphoneNumber(String value) {
    const STRIP_REGEX = r'[^\d]';

    RegExp regExp;
    if (value.length == 11)
      regExp = RegExp(r'^(\d{2})(\d{1})(\d{4})(\d{4})$');
    else if (value.length == 13)
      regExp = RegExp(r'^\d{2}(\d{2})(\d{1})(\d{4})(\d{4})$');
    else
      return value;

    RegExp regexStrip = RegExp(STRIP_REGEX);
    value = value.replaceAll(regexStrip, "");

    return value.replaceAllMapped(
        regExp, (Match m) => "(${m[1]}) ${m[2]} ${m[3]}-${m[4]}");
  }

  static String formatCEP(String value) {
    const STRIP_REGEX = r'[^\d]';

    RegExp regExp = RegExp(r'^(\d{2})(\d{3})(\d{3})$');

    RegExp regexStrip = RegExp(STRIP_REGEX);
    value = value.replaceAll(regexStrip, "");

    return value.replaceAllMapped(
        regExp, (Match m) => "${m[1]}.${m[2]}-${m[3]}");
  }

  static String getNumberOnly(String phone) {
    return phone.replaceAll(regexNumberOnly, '');
  }

  static String getNumberDDD(String phone) {
    return phone.replaceAll(regexNumberOnly, '').substring(0, 2);
  }

  static String getPhoneAfterDDD(String phone) {
    return phone.replaceAll(regexNumberOnly, '').substring(2);
  }

  static String formatName(String value) {
    if (value.isEmpty)
      return value;

    //Remove numbers
    value = value.replaceAll(RegExp(r'[\d]'), "");

    var words = value.toLowerCase().split(' ');

    for (var i = 0; i < words.length; i++) {
      var letters = words[i].split('');

      if(letters.length > 0) {
        letters[0] = letters[0].toUpperCase();
        words[i] = letters.join('');
      }
    }

    return words.join(' ');
  }

  static String trim(String value) {
    return value.trim();
  }

  static String trimAll(String value) {
    return value.replaceAll(regexWhitespaces, "");
  }

  static String getInitials(String value, {int? limit}) {
    String initials = value
        .split(" ")
        .where((word) => !isEmpty(word))
        .map((word) => word.substring(0, 1))
        .join("");

    return limit!=null && initials.length >= limit ? initials.substring(0, limit) : initials;
  }

  static String getInitialsFirstnameAndLastname(String value) {
    value = value.toUpperCase().trim();
    if(value.isEmpty)
      return value;

    var words = value.split(" ");
    if(words.length == 1)
      return words.first.substring(0,1);
    if(words.length > 1)
      return words.first.substring(0,1) + words.last.substring(0,1);

    return value;
  }

  static String firstName(String value) => value.split(" ").firstWhere((word) => !isEmpty(word));

  static String lastName(String value) => value.split(" ").lastWhere((word) => !isEmpty(word));

  /// A method returns a human readable string representing a file _size
  static String filesize(dynamic size, [int round = 2]) {
    /**
     * [size] can be passed as number or as string
     *
     * the optional parameter [round] specifies the number
     * of digits after comma/point (default is 2)
     */
    int divider = 1000;
    int _size;
    try {
      _size = int.parse(size.toString());
    } catch (e) {
      throw ArgumentError("Can not parse the size parameter: $e");
    }

    if (_size < divider) {
      return "$_size B";
    }

    if (_size < divider * divider && _size % divider == 0) {
      return "${(_size / divider).toStringAsFixed(0)} KB";
    }

    if (_size < divider * divider) {
      return "${(_size / divider).toStringAsFixed(round)} KB";
    }

    if (_size < divider * divider * divider && _size % divider == 0) {
      return "${(_size / (divider * divider)).toStringAsFixed(0)} MB";
    }

    if (_size < divider * divider * divider) {
      return "${(_size / divider / divider).toStringAsFixed(round)} MB";
    }

    if (_size < divider * divider * divider * divider && _size % divider == 0) {
      return "${(_size / (divider * divider * divider)).toStringAsFixed(0)} GB";
    }

    if (_size < divider * divider * divider * divider) {
      return "${(_size / divider / divider / divider).toStringAsFixed(round)} GB";
    }

    if (_size < divider * divider * divider * divider * divider &&
        _size % divider == 0) {
      num r = _size / divider / divider / divider / divider;
      return "${r.toStringAsFixed(0)} TB";
    }

    if (_size < divider * divider * divider * divider * divider) {
      num r = _size / divider / divider / divider / divider;
      return "${r.toStringAsFixed(round)} TB";
    }

    if (_size < divider * divider * divider * divider * divider * divider &&
        _size % divider == 0) {
      num r = _size / divider / divider / divider / divider / divider;
      return "${r.toStringAsFixed(0)} PB";
    } else {
      num r = _size / divider / divider / divider / divider / divider;
      return "${r.toStringAsFixed(round)} PB";
    }
  }

  static String formatCardExpirationDate(String value) {
    if(isEmpty(value) || value.length != 4 ) return value;
    return "${value.substring(0,2)}/${value.substring(2,4)}";
  }

  static DateTime parseRechargeDateTime(String value) {
    try {
      return DateFormat("MMM dd yyyy hh:mm", 'en_US').parse(value);
    } catch (_) {
      try {
        return DateFormat("MMM  dd yyyy hh:mm", 'en_US').parse(value);
      } catch (_) {
        return DateFormat("yyyy-MM-dd hh:mm", 'en_US').parse(value);
      }
    }
  }

  static String formatRechargeDate(String value) {
    return DateFormat("dd/MM/yyyy").format(parseRechargeDateTime(value));
  }

  static String formatRechargeTime(String value) {
    return DateFormat("hh:mm").format(parseRechargeDateTime(value));
  }

  /*
   * Data Sizes
   */
  static String formatBytesReadable(num bytes) {
    if(bytes >= 1099511627776) {
      return "${bytes.convertFromTo(DIGITAL_DATA.byte, DIGITAL_DATA.tebibyte)?.toStringAsFixed(2)} TB";
    }
    else if (bytes >= 1073741824) {
      return "${bytes.convertFromTo(DIGITAL_DATA.byte, DIGITAL_DATA.gibibyte)?.toStringAsFixed(2)} GB";
    }
    else if (bytes >= 1048576) {
      return "${bytes.convertFromTo(DIGITAL_DATA.byte, DIGITAL_DATA.mebibyte)?.toStringAsFixed(2)} MB";
    }
    else {
      return "${bytes.convertFromTo(DIGITAL_DATA.byte, DIGITAL_DATA.kibibyte)?.toStringAsFixed(2)} KB";
    }
  }
  static String formatMebibytesReadable(num mebibytes) {
    if (mebibytes >= 1073741824) {
      return "${mebibytes.convertFromTo(DIGITAL_DATA.mebibyte, DIGITAL_DATA.pebibyte)?.toStringAsFixed(2)} PB";
    }
    else if (mebibytes >= 1048576) {
      return "${mebibytes.convertFromTo(DIGITAL_DATA.mebibyte, DIGITAL_DATA.tebibyte)?.toStringAsFixed(2)} TB";
    }
    else if (mebibytes >= 1024) {
      return "${mebibytes.convertFromTo(DIGITAL_DATA.mebibyte, DIGITAL_DATA.gibibyte)?.toStringAsFixed(2)} GB";
    }
    else {
      return "$mebibytes MB";
    }
  }
  static bool isVideoFile(String filename) {
    filename = filename.toLowerCase();
    return filename.endsWith(".mp4") ||
        filename.endsWith(".mkv") ||
        filename.endsWith(".avi") ||
        filename.endsWith(".mov") ||
        filename.endsWith(".wmv") ||
        filename.endsWith(".flv") ||
        filename.endsWith(".webm") ||
        filename.endsWith(".m4v") ||
        filename.endsWith(".3gp") ||
        filename.endsWith(".mpg") ||
        filename.endsWith(".mpeg") ||
        filename.endsWith(".rm") ||
        filename.endsWith(".rmvb") ||
        filename.endsWith(".ts") ||
        filename.endsWith(".vob");
  }
  static bool isAudioFile(String filename) {
    filename = filename.toLowerCase();
    return filename.endsWith(".mp3") ||
        filename.endsWith(".wav") ||
        filename.endsWith(".flac") ||
        filename.endsWith(".m4a") ||
        filename.endsWith(".aac") ||
        filename.endsWith(".ogg") ||
        filename.endsWith(".wma") ||
        filename.endsWith(".amr") ||
        filename.endsWith(".mid") ||
        filename.endsWith(".midi") ||
        filename.endsWith(".ac3") ||
        filename.endsWith(".ape") ||
        filename.endsWith(".opus");
  }
  static bool isImageFile(String filename) {
    filename = filename.toLowerCase();
    return filename.endsWith(".png") ||
        filename.endsWith(".jpg") ||
        filename.endsWith(".jpeg") ||
        filename.endsWith(".gif") ||
        filename.endsWith(".bmp") ||
        filename.endsWith(".tiff") ||
        filename.endsWith(".tif") ||
        filename.endsWith(".webp") ||
        filename.endsWith(".svg") ||
        filename.endsWith(".ico") ||
        filename.endsWith(".heic") ||
        filename.endsWith(".heif") ||
        filename.endsWith(".raw");
  }
  static bool isCompressedFile(String filename) {
    filename = filename.toLowerCase();
    return filename.endsWith(".zip") ||
        filename.endsWith(".rar") ||
        filename.endsWith(".7z") ||
        filename.endsWith(".tar") ||
        filename.endsWith(".gz") ||
        filename.endsWith(".bz2") ||
        filename.endsWith(".xz") ||
        filename.endsWith(".lzma") ||
        filename.endsWith(".tar.gz") ||
        filename.endsWith(".tgz") ||
        filename.endsWith(".tar.bz2") ||
        filename.endsWith(".tbz2") ||
        filename.endsWith(".tar.xz") ||
        filename.endsWith(".txz");
  }
  static bool isTextFile(String filename) {
    filename = filename.toLowerCase();
    return filename.endsWith(".txt") ||
        filename.endsWith(".json") ||
        filename.endsWith(".xml") ||
        filename.endsWith(".html") ||
        filename.endsWith(".md") ||
        filename.endsWith(".log") ||
        filename.endsWith(".rtf") ||
        filename.endsWith(".doc") ||
        filename.endsWith(".docx") ||
        filename.endsWith(".odt") ||
        filename.endsWith(".tex");
  }
  static bool isSpreadsheetFile(String filename) {
    filename = filename.toLowerCase();
    return filename.endsWith(".xlsx") ||
        filename.endsWith(".xls") ||
        filename.endsWith(".csv") ||
        filename.endsWith(".ods") ||
        filename.endsWith(".numbers") ||
        filename.endsWith(".gsheet") ||
        filename.endsWith(".et") ||
        filename.endsWith(".ett") ||
        filename.endsWith(".xlsm") ||
        filename.endsWith(".xltx") ||
        filename.endsWith(".ots") ||
        filename.endsWith(".fods");
  }
  static bool isPdfFile(String filename) => filename.toLowerCase().endsWith(".pdf");
}
