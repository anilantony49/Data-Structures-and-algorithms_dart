void bubbleSort(List<String> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j].compareTo(arr[j + 1]) > 0) {
        // Swap arr[j] and arr[j + 1]
        String temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<String> strings = ['banana', 'apple', 'orange', 'grape', 'kiwi'];

  print('Unsorted list: $strings');

  bubbleSort(strings);

  print('Sorted list: $strings');
}
