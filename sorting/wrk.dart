// bubbel sort

List<int> bbl(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    for (var j = 0; j < arr.length - i; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

//Selection sort

List<int> selec(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    int min = i;
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[min] > arr[j]) {
        min = j;
      }
    }
    int temp = arr[min];
    arr[min] = arr[i];
    arr[i] = temp;
  }
  return arr;
}

//insertion sort

List<int> insertsort(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    int val = arr[i];
    int j;
    for (j = i - 1; j >= 0 && arr[j] > val; j--) {
      arr[j + 1] = arr[j];
    }
    arr[j + 1] = val;
  }
  return arr;
}

main() {
  List<int> arr = [1, 67, 4, 36, 89, 2, 24, 99, 21, 72];
  print(arr);
  // print('Bubble sort of array is ');
  // print('${bbl(arr)}');
  // print('Selection sort of array is');
  // print(selec(arr));
  // print('Insertion sort of array is');
  // print(insertsort(arr));
  // print(arr);
  print('quick sort of array is');
  print(quicksortttttt(arr, 0, arr.length - 1));
}

int partttttttt(List<int> arr, int low, int high) {
  int i = low + 1;
  int j = high;
  int poivet = arr[low];
  int temp;
  while (i <= j) {
    if (arr[i] <= poivet && i <= high) {
      i++;
    }
    if (arr[j] > poivet) {
      j--;
    }
    if (i < j) {
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

List<int> quicksortttttt(List<int> arr, int low, int high) {
  if (low < high) {
    int pos = partttttttt(arr, low, high);
    quicksortttttt(arr, low, pos - 1);
    quicksortttttt(arr, pos + 1, high);
  }
  return arr;
}
