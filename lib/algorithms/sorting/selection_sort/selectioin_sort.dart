void main(List<String> args) {
  List<int> result = selectionSort([3, 5, -2, 6, 0, -5]);
  print(result);
}

selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp; 
  }
  return arr;
}

// Big-o = o(n^2)
