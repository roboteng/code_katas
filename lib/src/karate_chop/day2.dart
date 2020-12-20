import 'package:code_katas/src/karate_chop/karate_chop.dart';

class Day2 extends KarateChop {
  @override
  int binarySearch(int targetValue, List<int> ints) {
    if (ints.isEmpty) {
      return -1;
    }
    if (targetValue > ints.last || targetValue < ints[0]) {
      return -1;
    } else {
      var start = 0;
      var end = ints.length - 1;
      var middleIndex = getMiddleIndex(start, end);

      while (start < end) {
        var middle = ints[middleIndex];
        if (targetValue < middle) {
          end = middleIndex - 1;
        } else if (targetValue == middle) {
          return middleIndex;
        } else {
          start = middleIndex + 1;
        }
        middleIndex = getMiddleIndex(start, end);
      }
      if (ints[middleIndex] == targetValue) {
        return middleIndex;
      } else {
        return -1;
      }
    }
  }

  static int getMiddleIndex(int start, end) => (start + end) ~/ 2;
}

// took a little bit shorter, but I realized I never made today's and yesterdays
// tests pass the ones they gave.  They don't pass, so I will restart this tomorrow
