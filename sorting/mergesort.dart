List<int> mergesort(List<int> arr, int low, int high) {
  if (low < high) {
    int mid = (high + low) ~/ 2;
    mergesort(arr, low, mid);
    mergesort(arr, mid + 1, high);
    merge(arr, low, mid, high);
  }
  return arr;
}

List<int> merge(List<int> arr, int low, int mid, int high) {
  int i = low;
  int j = mid + 1;
  int k = low;
  List<int> temp = List<int>.filled(arr.length, 0);
  while (i <= mid && j <= high) {
    if (arr[i] <= arr[j]) {
      temp[k++] = arr[i++];
    } else {
      temp[k++] = arr[j++];
    }
  }
  while (i <= mid) {
    temp[k++] = arr[i++];
  }
  while (j <= high) {
    temp[k++] = arr[j++];
  }
  for (var index = low; index <= high; index++) {
    arr[index] = temp[index];
  }
  return arr;
}

main() {
  List<int> arr = [1, 67, 4, 36, 89, 2, 24, 99, 21, 72];
  print(arr);
  print('array in assending order');
  print(mergesort(arr, 0, arr.length - 1));
}
