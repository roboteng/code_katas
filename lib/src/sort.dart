List<int> sort(List<int> numbers) {
  if (numbers.length < 2) {
    return numbers;
  } else {
    return sort(numbers.where((element) => element < numbers[0]).toList()) +
        [numbers[0]] +
        sort(numbers.where((element) => element > numbers[0]).toList());
  }
}
