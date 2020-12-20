import 'package:code_katas/src/karate_chop/day1.dart';
import 'package:code_katas/src/karate_chop/day2.dart';
import 'package:code_katas/src/karate_chop/day3.dart';
import 'package:code_katas/src/karate_chop/day4.dart';
import 'package:code_katas/src/karate_chop/day5.dart';
import 'package:test/test.dart';

void main() {
  group('Given tests', () {
    var searcher = Day5AndAHalf();
    var chop = (int t, List<int> l) => searcher.binarySearch(t, l);
    test('zero length lists', () {
      expect(chop(3, []), -1);
    });
    test('one length lists', () {
      expect(chop(3, [1]), -1);
      expect(chop(1, [1]), 0);
    });
    test('three length lists', () {
      expect(chop(1, [1, 3, 5]), 0);
      expect(chop(3, [1, 3, 5]), 1);
      expect(chop(5, [1, 3, 5]), 2);
      expect(chop(0, [1, 3, 5]), -1);
      expect(chop(2, [1, 3, 5]), -1);
      expect(chop(4, [1, 3, 5]), -1);
      expect(chop(6, [1, 3, 5]), -1);
    });
    test('four length lists', () {
      expect(chop(1, [1, 3, 5, 7]), 0);
      expect(chop(3, [1, 3, 5, 7]), 1);
      expect(chop(5, [1, 3, 5, 7]), 2);
      expect(chop(7, [1, 3, 5, 7]), 3);
      expect(chop(0, [1, 3, 5, 7]), -1);
      expect(chop(2, [1, 3, 5, 7]), -1);
      expect(chop(4, [1, 3, 5, 7]), -1);
      expect(chop(6, [1, 3, 5, 7]), -1);
      expect(chop(8, [1, 3, 5, 7]), -1);
    });
  });

  group('TDD testing', () {
    int Function(int, List<int>) chop;
    setUp(() {
      var solver = Day4();
      chop = (int x, List<int> ints) => solver.binarySearch(x, ints);
    });
    test('should return -1 if given empty list', () {
      expect(chop(1, []), -1);
    });
    test('should return 0 if value in list of one', () {
      expect(chop(1, [1]), 0);
    });
    test('should return second index', () {
      expect(chop(3, [1, 3]), 1);
    });
    test('should return the third value, if correct', () {
      expect(chop(5, [1, 3, 5]), 2);
    });
  });
}
