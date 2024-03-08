void main() {
  List<int> appendElmnt = appendElement([3, 4, 2, 4, 1], 2);
  List<int> prependElmnt = prependElement([3, 4, 2, 4, 1], 1);
  List<int> removeFirst = removeFromFirst([3, 4, 2, 4, 1]);
  List<int> removeLast = removeFromLast([3, 4, 2, 4, 1]);
  List<int> removeIndexResult = removeAtIndex([3, 4, 2, 4, 1], 2);
  List<int> insertIndexResult = insertAtIndex([3, 4, 2, 4, 1], 2, 10);
  List<int> removeElementResult = removeByElement([3, 4, 2, 4, 1], 3);
  List<int> reversedArray = reverseArray([3, 4, 2, 4, 1]);
  List<int> sortedArray = sortArray([3, 4, 2, 4, 1]);
  int findIndexResult = findIndex([3, 4, 2, 4, 1], 3);

  print('Array after inserting at last: $appendElmnt');
  print('Array after inserting in first: $prependElmnt');
  print('Remove From Last: $removeLast');
  print('Remove From First: $removeFirst');
  print('Array after removing at index: $removeIndexResult');
  print('Array after insertion at index: $insertIndexResult');
  print('Array after removing by element: $removeElementResult');
  print('Array after reversing: $reversedArray');
  print('Array after sorting: $sortedArray');
  print('Index of value 3: $findIndexResult');
}

List<int> appendElement(List<int> arr, int element) {
  List<int> result = [];

  for (int i = 0; i < arr.length; i++) {
    result.add(arr[i]);
  }
  result.add(element);
  return result;
}

List<int> prependElement(List<int> arr, int element) {
  List<int> result = [];

  result.add(element);
  for (int i = 0; i < arr.length; i++) {
    result.add(arr[i]);
  }
  return result;
}

List<int> removeFromFirst(List<int> arr) {
  List<int> result = [];

  for (int i = 0; i < arr.length - 1; i++) {
    arr[i] = arr[i + 1];
    result.add(arr[i]);
  }
  arr.length = arr.length - 1;
  return result;
}

List<int> removeFromLast(List<int> arr) {
  List<int> result = [];

  for (int i = 0; i < arr.length - 1; i++) {
    result.add(arr[i]);
  }
  arr.length = arr.length - 1;
  return result;
}

List<int> removeAtIndex(List<int> arr, int index) {
  List<int> result = [];

  for (int i = index; i < arr.length - 1; i++) {
    arr[i] = arr[i + 1];
  }
  arr.length = arr.length - 1;
  result = arr;
  return result;
}

List<int> insertAtIndex(List<int> arr, int index, int element) {
  List<int> result = [];

  for (int i = 0; i < arr.length; i++) {
    if (i == index) {
      result.add(element); // Add the new element at the specified index
    }
    result.add(arr[i]); // Add the current element of arr to the result
  }

  return result;
}

List<int> reverseArray(List<int> arr) {
  List<int> result = [];

  for (int i = arr.length - 1; i >= 0; i--) {
    result.add(arr[i]);
  }
  return result;
}

List<int> sortArray(List<int> arr) {
  List<int> result = [];

  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
    result.add(arr[i]);
  }
  return result;
}

List<int> removeByElement(List<int> arr, int elementToRemove) {
  List<int> result = [];

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] != elementToRemove) {
      result.add(arr[i]);
    }
  }

  return result;
}

int findIndex(List<int> arr, int index) {
  int result = 0;
  for (int i = 0; i < arr.length; i++) {
   result  = arr[index];
  }
  return result;
}

