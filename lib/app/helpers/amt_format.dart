String currencyFormat(num value) {
  String? val;
  if (value.abs() >= 10000000) {
    val = (value.abs() / 10000000).toStringAsFixed(2) + ' cr';
  } else if (value.abs() >= 100000) {
    val = (value.abs() / 10000000).toStringAsFixed(2) + ' Lakh';
  }
  return val!;
}
