import 'dart:math';

import 'package:code_katas/src/karate_chop/karate_chop.dart';

class Day4 extends KarateChop {
  @override
  int binarySearch(int targetValue, List<int> ints) {
    if (ints.length > 1) {
      return nonTrivialSearch(ints, targetValue);
    } else {
      return trivialSearch(ints, targetValue);
    }
  }

  int nonTrivialSearch(List<int> ints, int targetValue) {
    var middleIndex = ints.length ~/ 2;
    if (ints[0] == targetValue) {
      return 0;
    } else {
      var secondHalf = binarySearch(
        targetValue,
        ints.sublist(middleIndex, ints.length),
      );
      if (secondHalf == -1){
        return binarySearch(
          targetValue,
          ints.sublist(0, middleIndex),
        );
      } else{
        return secondHalf + middleIndex;
      }
    }
  }

  int trivialSearch(List<int> ints, int targetValue) {
    return ((ints.length == 1) && ints[0] == targetValue) ? 0 : -1;
  }
}
