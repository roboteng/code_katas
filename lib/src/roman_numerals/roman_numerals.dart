String toRomanNumerals(int n) {
  return toRomanNumeralsLessThan10(n ~/ 1000, 'M', '', '') +
      toRomanNumeralsLessThan10((n ~/ 100) % 10, 'C', 'D', 'M') +
      toRomanNumeralsLessThan10((n ~/ 10) % 10, 'X', 'L', 'C') +
      toRomanNumeralsLessThan10(n % 10, 'I', 'V', 'X');
}

String toRomanNumeralsLessThan10(
  int n,
  String ones,
  String fives,
  String tens,
) {
  if (n <= 3) {
    return ones * n;
  } else if (n == 4) {
    return '$ones$fives';
  } else if (n == 9) {
    return '$ones$tens';
  } else {
    return '$fives${toRomanNumeralsLessThan10(n - 5, ones, fives, tens)}';
  }
}
