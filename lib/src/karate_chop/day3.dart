import 'package:code_katas/src/karate_chop/karate_chop.dart';

class Day3 extends KarateChop {
  @override
  int binarySearch(int targetValue, List<int> ints) {
    if (ints.isEmpty) {
      return -1;
    } else if (ints.length == 1) {
      if (ints[0] == targetValue) {
        return 0;
      } else {
        return -1;
      }
    } else {
      var middleIndex = ints.length ~/ 2;
      var middle = ints[middleIndex];
      if (middle == targetValue) {
        return middleIndex;
      } else if (middle > targetValue) {
        return binarySearch(targetValue, ints.sublist(0, middleIndex));
      } else {
        var subset = binarySearch(
          targetValue,
          ints.sublist(middleIndex + 1, ints.length),
        );
        if (subset == -1) {
          return subset;
        } else {
          return middleIndex + 1 + subset;
        }
      }
    }
  }
}

/*
This recursive method mostly just worked the first time I implemented it.
This is either means that this method is more intuitive, or I have been getting better
 */