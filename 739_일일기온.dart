class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    List<int> result = List.filled(temperatures.length, 0);
    List<int> stack = []; // 인덱스를 저장할 스택

    for (int i = 0; i < temperatures.length; i++) {
      // 현재 온도가 스택의 마지막 온도보다 높으면
      while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
        int lastIndex = stack.removeLast();
        result[lastIndex] = i - lastIndex;
      }
      stack.add(i);
    }

    print('result > $result');
    return result;
  }
}
