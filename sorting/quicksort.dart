main() {
  List<int> arr = [1, 67, 4, 36, 89, 2, 24, 99, 21, 72];
  print(arr);
  print(quickSort(arr, 0, arr.length - 1));
  // print(quick(arr, 0, arr.length - 1));
}

int partition(List<int> arr, int low, int high) {
  int i = low + 1;
  int j = high;
  int piovt = arr[low];
  int temp;
  while (i < j) {
    while (arr[i] <= piovt && i <= j) {
      i++;
    }
    while (arr[j] > piovt) {
      j--;
    }
    if (i <= j) {
      temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  temp = arr[j];
  arr[j] = arr[low];
  arr[low] = temp;
  return j;
}

List<int> quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pos = partition(arr, low, high);
    quickSort(arr, low, pos - 1);
    quickSort(arr, pos + 1, high);
  }
  return arr;
}
