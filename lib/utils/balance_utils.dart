library dolphin_flutter;

abstract class BalanceUtils {
  static int getBalanceAvailable(int balance, int tax) {
    return balance - tax;

  }
  static bool isBalanceAvailable(int balance, int value, int tax) {
    return (balance - value - tax) < 0;
  }
}