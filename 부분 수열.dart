class Solution {
  bool isSubsequence(String s, String t) {
    int sIndex = 0;

    for (int tIndex = 0; tIndex < t.length; tIndex++) {
      if (sIndex < s.length && s[sIndex] == t[tIndex]) {
        sIndex++;
      }
    }

    return sIndex == s.length;
  }
}
