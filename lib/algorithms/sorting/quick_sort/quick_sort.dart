quickSort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  }

  var pivot = arr[arr.length - 1];
  List<int> left = [];
  List<int> right = [];
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      left.add(arr[i]);
    } else {
      right.add(arr[i]);
    }
  }
  return [...quickSort(left), pivot, ...quickSort(right)];
}
void main(){
  List<int>arr= [3,4,2,-6,9,0];
  var result = quickSort(arr);
  print(result);
}


// worst-case - o(n^2)
// average-case - o(nlogn)