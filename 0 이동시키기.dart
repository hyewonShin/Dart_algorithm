class Solution {
  List<int> moveZeroes(List<int> nums) {
    int lastNonZeroIndex = 0;
    int temp = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[lastNonZeroIndex] = nums[i];
        lastNonZeroIndex++;
      }
    }

    for (int i = lastNonZeroIndex; i < nums.length; i++) {
      nums[i] = 0;
    }
    return nums;
  }
}
