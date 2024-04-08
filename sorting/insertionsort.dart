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
  print('sorted the list in desending order');
  // print(insertsort(arr));
  // print(ins(arr));
  print(insert(arr));
}

List<int> ins(List<int> arr) {
  int j;
  for (var i = 1; i < arr.length; i++) {
    int val = arr[i];
    for (j = i - 1; j >= 0 && arr[j] < val; j--) {
      arr[j + 1] = arr[j];
    }
    arr[j + 1] = val;
  }
  return arr;
}

List<int> insert(List<int> arr) {
  int j;
  for (var i = 1; i < arr.length; i++) {
    int val = arr[i];
    for (j = i - 1; j >= 0 && arr[j] > val; j--) {
      arr[j + 1] = arr[j];
    }
    arr[j + 1] = val;
  }
  return arr;
}
