library dolphin_flutter;

import 'package:dolphin_flutter/utils/DateTimeUtils.dart';
import 'package:dolphin_flutter/utils/StringUtils.dart';
import 'package:dolphin_flutter/utils/ValidatorUtils.dart';

extension TextUtilsStringExtension on String {
  /// Returns true if string is:
  /// - null
  /// - empty
  /// - whitespace string.
  ///
  /// Characters considered "whitespace" are listed [here](https://stackoverflow.com/a/59826129/10830091).
  bool get isNullEmptyOrWhitespace =>
      this.isEmpty || this.trim().isEmpty;

  /// Returns true if cpf or cpnj is:
  /// - valid
  ///
  bool get isCpfOrCnpjValid => ValidatorUtils.validateCPFandCNPJ(this);

  bool get isPhoneNumberValid => ValidatorUtils.validatePhoneNumber(this);

  bool get isDateValid => ValidatorUtils.validateDate(this);

  bool get isDateFuture => DateTimeUtils.isDateInTheFuture(this.brToDate);

  bool get isEmailValid => ValidatorUtils.validateEmail(this);
  bool get isEmailValidAfterTrim => ValidatorUtils.validateEmailTrimSpaces(this);

  String get getNumberOnly => StringUtils.getNumberOnly(this);

  String get getNumberDDD => StringUtils.getNumberDDD(this);

  String get getPhoneAfterDDD => StringUtils.getPhoneAfterDDD(this);

  String get formatPhone => StringUtils.formatPhoneNumber(this);

  String get formatPhoneWithCountryCode => StringUtils.formatPhoneNumber(this.substring(2,this.length));

  String get fromDateTimeBackendToStringBr => DateTimeUtils.smartBackendDateTimeConversion(this);

  DateTime get brToDate => DateTimeUtils.brToDate(this);

  String get formatCentsToReais => StringUtils.centsToReais(int.parse(this));

  String get formatName => StringUtils.formatName(this);

  String get formatCpfOrCnpj => StringUtils.formatCpfOrCnpj(this);
}

extension DateTimeUtilsExtension on DateTime {
  String get dateToBrString => DateTimeUtils.dateToBrString(this);

  String get dateToApiFormat => DateTimeUtils.apiFormat(this);

  String get dateToUiFormat => DateTimeUtils.uiFormat(this);

  String get dateTimeToApiFormat => DateTimeUtils.apiFormatWithTime(this);
}

extension CurrencyUtilsExtension on num {
  String get formatToReais => StringUtils.formatToReais(this);

  String get formatToReaisNumbersOnly => StringUtils.formatToReaisNumbersOnly(this);

  String get formatCentsToReais => StringUtils.centsToReais(this);

  String get formatCentsToReaisNoSymbol => StringUtils.centsToReaisNoSymbol(this);

  String get formatCentsToReaisHidden => StringUtils.centsToReais(this)
      .replaceAll(new RegExp(r'\d'),'*')
      .replaceAll('.', '*')
      .replaceAll(',', '*');
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