int linearSearch(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  int result = linearSearch([1, 5, 3, 4, 7, 8], 5);
  print(result);
}
 