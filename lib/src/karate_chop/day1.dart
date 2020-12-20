import 'package:code_katas/src/karate_chop/karate_chop.dart';

class Day1 extends KarateChop {
  @override
  int binarySearch(int targetValue, List<int> ints, [int offset = 0]) {
    if (ints.isEmpty) {
      return -1;
    } else if (ints.length == 1) {
      if (ints[0] == targetValue) {
        return offset;
      } else {
        return -1;
      }
    } else {
      var middleIndex = ints.length ~/ 2;
      var middle = ints[middleIndex];
      if (middle > targetValue) {
        return binarySearch(
          targetValue,
          ints.sublist(0, middleIndex),
          offset,
        );
      } else if (middle == targetValue) {
        return offset + middleIndex;
      } else {
        return binarySearch(
          targetValue,
          ints.sublist(middleIndex, ints.length),
          offset + middleIndex,
        );
      }
    }
  }
}

// Took about 15 minutes for first algorthim, no testing
// made the mistake of not returning the index of the target
// failed tests when writing

/*
I did make some mistakes, it took about 15 minutes to write the code, but
my thought process wasn't totally correct, I mixed up the '<' in the check
 */
