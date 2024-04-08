List<int> sortbub(List<int> arr) {
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

List<int> sortins(List<int> arr) {
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

List<int> sortsel(List<int> arr) {
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

List<int> sortquick(List<int> arr, int low, int high) {
  if (low < high) {
    int p = sortpart(arr, low, high);
    sortquick(arr, low, p - 1);
    sortquick(arr, p + 1, high);
  }
  return arr;
}

int sortpart(List<int> arr, int low, int high) {
  int i = low + 1;
  int j = high;
  int piovet = arr[low];
  int temp;
  while (i <= j) {
    if (arr[i] >= piovet && i <= j) {
      i++;
    }
    if (arr[j] < piovet) {
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
  List<int> arr = [99, 5, 21, 9, 36, 1, 7, 89, 3, 8, 72, 4, 6, 24, 2];
  print(arr);
  // print(sortbub(arr));
  // print(sortins(arr));
  // print(sortsel(arr));
  print('quick sort array in desending order');
  print(sortquick(arr, 0, arr.length - 1));
  // print(sortmerg(arr, 0, arr.length - 1));
}

List<int> sortmerg(List<int> arr, int low, int high) {
  if (low < high) {
    int mid = (high + low) ~/ 2;
    sortmerg(arr, low, mid);
    sortmerg(arr, mid + 1, high);
    merg(arr, low, mid, high);
  }
  return arr;
}

List<int> merg(List<int> arr, int low, int mid, int high) {
  int i = low;
  int j = mid + 1;
  int k = low;
  List<int> array = List<int>.filled(arr.length, 0);
  while (i <= mid && j <= high) {
    if (arr[i] <= arr[j]) {
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
  for (var inde = low; inde <= high; inde++) {
    arr[inde] = array[inde];
  }
  return arr;
}
