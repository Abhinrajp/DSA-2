List<int> sel(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    int min = i;
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[min] > arr[j]) {
        min = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[min];
    arr[min] = temp;
  }
  return arr;
}

main() {
  List<int> arr = [1, 67, 4, 36, 89, 2, 24, 99, 21, 72];
  print(arr);
  // print('array in assending order');
  // print(sel(arr));
  // print('the list into the dessending order');
  // print(selde(arr));
  print(selsor(arr));
}

List<int> selde(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    int min = i;
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[min] < arr[j]) {
        min = j;
      }
    }
    int temp = arr[min];
    arr[min] = arr[i];
    arr[i] = temp;
  }
  return arr;
}

List<int> selsor(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    int mid = i;
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[mid] > arr[j]) {
        mid = j;
      }
    }
    int temp = arr[mid];
    arr[mid] = arr[i];
    arr[i] = temp;
  }
  return arr;
}
