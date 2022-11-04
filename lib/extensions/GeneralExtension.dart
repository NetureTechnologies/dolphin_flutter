library dolphin_flutter;

import 'package:dolphin_flutter/utils/DateTimeUtils.dart';
import 'package:dolphin_flutter/utils/NumUtils.dart';
import 'package:dolphin_flutter/utils/StringUtils.dart';
import 'package:dolphin_flutter/utils/ValidatorUtils.dart';
import 'package:timeago/timeago.dart' as timeago;

extension TextUtilsStringExtension on String {
  /// Returns true if string is:
  /// - null
  /// - empty
  /// - whitespace string.
  ///
  /// Characters considered "whitespace" are listed [here](https://stackoverflow.com/a/59826129/10830091).
  bool get isNullEmptyOrWhitespace => this.isEmpty || this.trim().isEmpty;

  // Validators
  bool get isCpfOrCnpjValid => ValidatorUtils.validateCPFandCNPJ(this);
  bool get isPhoneNumberValid => ValidatorUtils.validatePhoneNumber(this);
  bool get isDateValid => ValidatorUtils.validateDate(this);
  bool get isEmailValid => ValidatorUtils.validateEmail(this);
  bool get isEmailValidAfterTrim => ValidatorUtils.validateEmailTrimSpaces(this);

  // Getters
  String get getNumberOnly => StringUtils.getNumberOnly(this);
  String get getNumberDDD => StringUtils.getNumberDDD(this);
  String get getPhoneAfterDDD => StringUtils.getPhoneAfterDDD(this);

  // Formatters
  String get formatPhone => StringUtils.formatPhoneNumber(this);
  String get formatPhoneWithCountryCode => StringUtils.formatPhoneNumber(this.substring(2,this.length));
  String get formatCentsToReais => StringUtils.centsToReais(int.parse(this));
  String get formatName => StringUtils.formatName(this);
  String get formatCpfOrCnpj => StringUtils.formatCpfOrCnpj(this);

  // Converters
  DateTime get convertDateFromApi => DateTimeUtils.apiFormatDateFromBackend(this);
  DateTime get convertDateTimeFromApi => DateTimeUtils.apiFormatDateTimeFromBackend(this);
  DateTime get convertDateTimeFromBrFormat => DateTimeUtils.parseFromBrazilDateTime(this);
}

extension DateTimeNullableUtilsExtension on DateTime? {
  // Formatters
  String? get formatUiBrazil => DateTimeUtils.uiFormatBrazil(this);
  String? get formatUiTimeBrazil => DateTimeUtils.uiFormatTimeBrazil(this);
  String? get formatApiDate => DateTimeUtils.apiFormatDateToBackend(this);
  String? get formatApiDateTime => DateTimeUtils.apiFormatDateTimeToBackend(this);
  String? get formatApiInternationalDate => DateTimeUtils.apiFormatInternational(this);
  String? get formatApiInternationalDateTime => DateTimeUtils.apiFormatInternationalWithTime(this);
  String? get monthName => DateTimeUtils.getMonthName(this);
}

extension DateTimeUtilsExtension on DateTime {
  // Helpers
  bool get isDateInTheFuture => DateTimeUtils.isDateInTheFuture(this);
  bool get isDateInThePast => DateTimeUtils.isDateInThePast(this);
}

extension DateTimeNullable on DateTime? {
  String get timeAgo {
    timeago.setLocaleMessages('pt_br', timeago.PtBrShortMessages());
    timeago.setLocaleMessages('pt_br_short', timeago.PtBrMessages());
    if(this == null) {
      return toString();
    }

    return timeago.format(this!, locale: 'pt_br_short');
  }

  String get timeAgoShort {
    timeago.setLocaleMessages('pt_br_short', timeago.PtBrMessages());
    if(this == null) {
      return toString();
    }

    return timeago.format(this!, locale: 'pt_br_short');
  }
}

extension CurrencyUtilsExtension on num {
  // Formatters
  String get formatToReais => StringUtils.formatToReais(this);
  String get formatToReaisNumbersOnly => StringUtils.formatToReaisNumbersOnly(this);
  String get formatCentsToReais => StringUtils.centsToReais(this);
  String get formatCentsToReaisNoSymbol => StringUtils.centsToReaisNoSymbol(this);
  String get formatCentsToReaisHidden => StringUtils.centsToReais(this).replaceAll(new RegExp(r'\d'),'*').replaceAll('.', '*').replaceAll(',', '*');
}

extension BytesExtension on num {
  String get formatBytesReadable => StringUtils.formatBytesReadable(this);
  String get formatMebibytesReadable => StringUtils.formatMebibytesReadable(this);
  int? get bytesToGb => NumUtils.bytesToGb(this);
  int? get gbToBytes => NumUtils.gbToBytes(this);
  int? get mbToGb => NumUtils.mbToGb(this);
}

extension DoubleExtensions on double {
  bool get isInt => (this % 1) == 0;
}

/// - [isNullOrEmpty], [isNullEmptyOrFalse], [isNullEmptyZeroOrFalse] are from [this StackOverflow answer](https://stackoverflow.com/a/59826129/10830091)
extension GeneralUtilsObjectExtension on Object {
  /// Returns true if object is:
  /// - null `Object`
  /// - empty `String`
  /// - empty `Iterable` (list, map, set, ...)
  bool get isNullOrEmpty => _isStringObjectEmpty || _isIterableObjectEmpty;

  /// Returns true if object is:
  /// - null `Object`
  /// - empty `String`
  /// - empty `Iterable` (list, map, set, ...)
  /// - false `bool`
  bool get isNullEmptyOrFalse => _isStringObjectEmpty ||
          _isIterableObjectEmpty ||
          _isBoolObjectFalse;

  /// Returns true if object is:
  /// - null `Object`
  /// - empty `String`
  /// - empty `Iterable` (list, map, set, ...)
  /// - false `bool`
  /// - zero `num`
  bool get isNullEmptyFalseOrZero => _isStringObjectEmpty ||
          _isIterableObjectEmpty ||
          _isBoolObjectFalse ||
          _isNumObjectZero;

  // ------- PRIVATE EXTENSION HELPERS -------
  /// **Private helper**
  ///
  /// If `String` object, return String's method `isEmpty`
  ///
  /// Otherwise return `false` to not affect logical-OR expression. As `false` denotes undefined or N/A since object is not `String`
  bool get _isStringObjectEmpty =>
      (this is String) ? (this as String).isEmpty : false;

  /// **Private helper**
  ///
  /// If `Iterable` object, return Iterable's method `isEmpty`
  ///
  /// Otherwise return `false` to not affect logical-OR expression. As `false` denotes undefined or N/A since object is not `Iterable`
  bool get _isIterableObjectEmpty =>
      (this is Iterable) ? (this as Iterable).isEmpty : false;

  /// **Private helper**
  ///
  /// If `bool` object, return `isFalse` expression
  ///
  /// Otherwise return `false` to not affect logical-OR expression. As `false` denotes undefined or N/A since object is not `bool`
  bool get _isBoolObjectFalse =>
      (this is bool) ? (this as bool) == false : false;

  /// **Private helper**
  ///
  /// If `num` object, return `isZero` expression
  ///
  /// Otherwise return `false` to not affect logical-OR expression. As `false` denotes undefined or N/A since object is not `num`
  bool get _isNumObjectZero => (this is num) ? (this as num) == 0 : false;
}