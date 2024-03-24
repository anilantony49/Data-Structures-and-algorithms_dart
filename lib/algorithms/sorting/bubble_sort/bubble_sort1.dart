bubbleSorting(List<int> arr) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < arr.length - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);

  return arr;
}

void main() {
  List<int> arr = [1, 3, 2, 6, 0, -2];

  var result = bubbleSorting(arr);
  print(result);
}

// Big - O = o(n^2)
