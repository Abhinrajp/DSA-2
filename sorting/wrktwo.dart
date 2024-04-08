List<int> bob(List<int> arr) {
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

List<int> insr(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    int val = arr[i];
    int j;
    for (j = i - 1; j >= 0 && arr[j] > val; j--) {
      if (arr[j] > arr[j + 1]) {
        arr[j + 1] = arr[j];
      }
    }
    arr[j + 1] = arr[i];
  }
  return arr;
}

List<int> slsrt(List<int> arr) {
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

List<int> qks(List<int> arr, int low, int high) {
  if (low < high) {
    int p = partion(arr, low, high);
    qks(arr, low, p);
    qks(arr, p + 1, high);
  }
  return arr;
}

int partion(List<int> arr, int low, int high) {
  int i = low;
  int j = high;
  int piovet = arr[low];
  int temp;
  while (i <= j) {
    while (arr[i] <= piovet && i <= j) {
      i++;
    }
    while (arr[j] > piovet) {
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

main() {
  List<int> arr = [67, 1, 4, 36, 89, 2, 24, 99, 21, 72];
  print(arr);
  // print('bubble sort of array is');
  // print(bob(arr));
  // print('insertion sort of array is');
  // print(insr(arr));
  // print('selection sort of array is');
  // print(slsrt(arr));
  print('quick sort of array is');
  print(qks(arr, 0, arr.length - 1));
  // print('merge sort of array is in decending order');
  // print(mrgsrt(arr, 0, arr.length - 1));
}

List<int> mrgsrt(List<int> arr, int low, int high) {
  if (low < high) {
    int mid = (high + low) ~/ 2;
    mrgsrt(arr, mid + 1, high);
    mrgsrt(arr, low, mid);
    mrj(arr, low, mid, high);
  }
  return arr;
}

List<int> mrj(List<int> arr, int low, int mid, int high) {
  int i = low;
  int j = mid + 1;
  int k = low;
  List<int> array = List<int>.filled(arr.length, 0);

  while (i <= mid && j <= high) {
    if (arr[i] >= arr[j]) {
      array[k++] = arr[i++];
    } else {
      array[k++] = arr[j++];
    }
  }
  while (i <= mid) {
    array[k++] = arr[i++];
  }
  while (j <= high) {
    array[k++] = arr[j++];
  }
  for (var ind = low; ind <= high; ind++) {
    arr[ind] = array[ind];
  }

  return arr;
}
