main() {
  List<int> arr = [1, 67, 4, 36, 89, 2, 24, 99, 21, 72];
  print(arr);
  // print('array is');
  // print(buble(arr));
  // print('another exaple is');
  // print(bubletwo(arr));
  // print('another exaple is');
  // print(bublethree(arr));
  // print(bub(arr));
  print(bb(arr));
}

List<int> bubletwo(List<int> arr) {
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

List<int> bublethree(List<int> arr) {
  int len = arr.length;
  while (len > 1) {
    for (var j = 0; j < len - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
    len--;
  }
  return arr;
}

List<int> buble(List<int> arr) {
  int? temp;
  for (var i = 1; i < arr.length; i++) {
    for (var j = 0; j < arr.length - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

List<int> bub(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    for (var j = 0; j < arr.length - i; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j + 1];
        arr[j + 1] = arr[j];
        arr[j] = temp;
      }
    }
  }
  return arr;
}

List<int> bb(List<int> arr) {
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
