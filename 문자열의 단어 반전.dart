class Solution {
  String reverseWords(String s) {
    var answer = s
        .split(' ')
        .where((value) => value.isNotEmpty)
        .toList()
        .reversed
        .join(' ');

    return answer;
  }
}
