class Solution {
  int largestAltitude(List<int> gain) {
    print('gain $gain');
    var start = 0;
    var max = 0;

    for (int i = 0; i < gain.length; i++) {
      start += gain[i];
      if (start > max) {
        max = start;
      }
    }
    return max;
  }
}
