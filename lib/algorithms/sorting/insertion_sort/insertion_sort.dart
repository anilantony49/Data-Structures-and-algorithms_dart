insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int numberToInsert = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > numberToInsert) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = numberToInsert;
  }
  return arr;
}

void main(){
  List<int>arr = [8,20,-2,4,-6];
  var result = insertionSort(arr);
  print(result);
}


// Big-o =  o(n^2)