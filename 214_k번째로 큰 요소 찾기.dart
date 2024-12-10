class Solution {
  int findKthLargest(List<int> nums, int k) {
    nums.sort((a, b) => b.compareTo(a)); // 내림차순 정렬
    return nums[k - 1]; // k번째로 큰 요소 반환
  }
}
