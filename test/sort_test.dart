import 'package:code_katas/src/sort.dart';
import 'package:test/test.dart';

void main() {
  group('', () {
    test('Sorting', () {
      expect(sort([]), []);
      expect(sort([0]),[0]);
      expect(sort([0,1]),[0,1]);
      expect(sort([1,0]),[0,1]);
      expect(sort([0,1,2]),[0,1,2]);
      expect(sort([1,0,2]),[0,1,2]);
      expect(sort([0,2,1]),[0,1,2]);
      expect(sort([2,1,0]),[0,1,2]);
      expect(sort([2,5,9,6,1,3,8,7,0,4]),[0,1,2,3,4,5,6,7,8,9]);
    });
  });
}
