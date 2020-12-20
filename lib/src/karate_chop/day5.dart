import 'package:code_katas/src/karate_chop/karate_chop.dart';

// writing only using expressions
class Day5 extends KarateChop {
  @override
  int binarySearch(int targetValue, List<int> ints) =>
      ints.isEmpty ? -1 : nonEmptyBinarySearch(targetValue, ints);

  int nonEmptyBinarySearch(int targetValue, List<int> ints) => ints.length > 1
      ? towOrLongerBinarySearch(targetValue, ints)
      : singleLengthBinarySearch(targetValue, ints);

  int singleLengthBinarySearch(int targetValue, List<int> ints) =>
      ints[0] == targetValue ? 0 : -1;

  int towOrLongerBinarySearch(int targetValue, List<int> ints) => decideLogic(
        binarySearch(targetValue, ints.sublist(0, ints.length ~/ 2)),
        binarySearch(targetValue, ints.sublist(ints.length ~/ 2, ints.length)),
        ints.length,
      );

  int decideLogic(int firstHalf, int secondHalf, int length) =>
      (firstHalf == -1 && secondHalf == -1)
          ? -1
          : confirmedOneHalfHasValue(firstHalf, secondHalf, length);

  int confirmedOneHalfHasValue(int firstHalf, int secondHalf, int length) =>
      firstHalf >= 0 ? firstHalf : secondHalf + length ~/ 2;
}

class Day5AndAHalf extends KarateChop {
  @override
  int binarySearch(int targetValue, List<int> ints) => ints.isEmpty
      ? -1
      : ints.length > 1
          ? decideLogic(
              binarySearch(targetValue, ints.sublist(0, ints.length ~/ 2)),
              binarySearch(
                  targetValue, ints.sublist(ints.length ~/ 2, ints.length)),
              ints.length,
            )
          : ints[0] == targetValue
              ? 0
              : -1;

  int decideLogic(int firstHalf, int secondHalf, int length) =>
      (firstHalf == -1 && secondHalf == -1)
          ? -1
          : firstHalf >= 0
              ? firstHalf
              : secondHalf + length ~/ 2;
}
