class Solution {
  String removeStars(String s) {
    List<String> result = [];

    for (int i = 0; i < s.length; i++) {
      if (s[i] != "*") {
        result.add(s[i]);
      } else {
        result.removeLast();
      }
    }
    return result.join();
  }
}
