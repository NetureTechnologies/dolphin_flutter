library dolphin_flutter;

import 'package:flutter/foundation.dart';

class BalanceUtils {
  static int getBalanceAvailable({int balance, int tax}) {
    return balance - tax;

  }

  static bool isBalanceAvailable({ @required int balance, @required int value, @required int tax }) {
    return (balance - value - tax) < 0;
  }

}