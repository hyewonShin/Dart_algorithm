int manyhavecandy(List<int> value1, int value2) {
  // acc : 현재까지의 누적값
  // curr : 배열의 현재 요소
  int max = value1.reduce((acc, curr) => acc > curr ? acc : curr);
  print('max $max');

  List<int> result2 = plusValue2(value1, value2);
  print('result2 $result2');

  return max;
}

List<int> plusValue2(value1, value2) {
  List<int> result = [];
  for (int i = 0; i < value1.length; i++) {
    result.add(value1[i] + value2);
  }
  return result;
}

void main() {
  print(manyhavecandy([2, 3, 5, 1, 3], 3));
}
