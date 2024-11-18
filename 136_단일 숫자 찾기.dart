class Solution {
  int singleNumber(List<int> nums) {
    int count = 0;
    int result = 0;

    for (int i = 0; i < nums.length; i++) {
      count = 0;
      for (int j = 0; j < nums.length; j++) {
        if (nums[i] == nums[j] && i != j) {
          count += 1;
          break;
        }
      }
      if (count == 0) {
        result = nums[i];
      }
    }
    return result;
  }
}
