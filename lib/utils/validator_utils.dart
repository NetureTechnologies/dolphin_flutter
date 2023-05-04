library dolphin_flutter;

import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:email_validator/email_validator.dart';
import 'package:intl/intl.dart';

class ValidatorUtils {
  static RegExp regexCpfCnpj = RegExp(r'[^\d]');
  static RegExp regexNameComplete = RegExp(r"^(\s|[A-Za-z0-9áéíóúãõâêîôûç']+ [A-Za-z0-9áéíóúãõâêîôûç']+)*$", caseSensitive: false);
  static RegExp regexPhone = RegExp(r'^\([1-9][0-9]\)\s(?:9\d|[2-8])\d{3}\-\d{4}$');
  static RegExp regexCep = RegExp(r'^\d{5}[-]\d{3}$');
  static RegExp regexWhitespaces = RegExp(r"\s+\b|\b\s| ");

  static bool validateEmpty(value) {
    return value != null
        && value.toString().isNotEmpty
        && value.toString().replaceAll(regexWhitespaces, "").isNotEmpty;
  }
  static bool validateCPFandCNPJ(String? documento) {
    documento = documento == null ? "" : documento;
    var documentoNumbersOnly = documento.replaceAll(regexCpfCnpj, "");

    if(documentoNumbersOnly.length <= 11) {
      return CPFValidator.isValid(documentoNumbersOnly);
    } else {
      return CNPJValidator.isValid(documentoNumbersOnly);
    }
  }
  static bool validateNameIsComplete(String? name) {
    if(name==null || name.isEmpty)
      return false;

    return regexNameComplete.hasMatch(name);
  }
  static bool validatePhoneNumber(String? phone) {
    if(phone==null || phone.isEmpty)
      return false;

    String auxPhone = phone.toString();
    if (auxPhone.replaceAll(RegExp(r'[^\d]'), '').length > 11)
      return false;

    return regexPhone.hasMatch(phone);
  }
  static bool validateDate(String? date) {
    if (date == null || date.isEmpty || date.length < 10)
      return false;

    var dateFormat = DateFormat("dd/MM/yyyy");
    try {
      dateFormat.parse(date);
    }
    catch(ex) {
      // Invalid date
      return false;
    }

    final day = int.parse(date.split("/")[0]);
    final month = int.parse(date.split("/")[1]);
    final year = int.parse(date.split("/")[2]);
    return day > 0 && day <= 31 && month > 0 && month <= 12 && year > 1900 && year <= 9999;
  }
  static bool validateEmailTrimSpaces(String email) {
    email = email.trim();
    return validateEmail(email);
  }
  static bool validateEmail(String email) {
    if(!validateEmpty(email))
      return false;

    return EmailValidator.validate(email);
  }
  static bool validateCep(String cep) {
    if(!validateEmpty(cep))
      return false;

    return regexCep.hasMatch(cep);
  }

  static bool validatePasswordLength(String password, {int length = 8}) {
    return password.length >= length;
  }
}