class Sorting {
  List<int> insertion(List<int> arr) {
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

  List<int> selection(List<int> arr) {
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

  List<int> buble(List<int> arr) {
    for (var i = 1; i < arr.length; i++) {
      for (var j = 0; j < arr.length - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
    return arr;
  }

  List<int> quick(List<int> arr, int low, int high) {
    if (low < high) {
      int p = partofquick(arr, low, high);
      quick(arr, low, p - 1);
      quick(arr, p + 1, high);
    }
    return arr;
  }

  int partofquick(List<int> arr, int low, int high) {
    int i = low + 1;
    int j = high;
    int temp;
    int piovet = arr[low];
    while (i <= j) {
      if (arr[i] <= piovet && i <= j) {
        i++;
      }
      if (arr[j] > piovet) {
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

  List<int> mergofsort(List<int> arr, int low, int high) {
    if (low < high) {
      int mid = (high + low) ~/ 2;
      mergofsort(arr, low, mid);
      mergofsort(arr, mid + 1, high);
      mergg(arr, low, mid, high);
    }
    return arr;
  }

  List<int> mergg(List<int> arr, int low, int mid, int high) {
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
}

main() {
  List<int> arr = [5, 12, 8, 19, 3, 10, 27, 15, 6, 22];
  Sorting sorting = Sorting();
  print(arr);
  // print(sorting.insertion(arr));
  // print(sorting.selection(arr));
  // print(sorting.buble(arr));
  // print(sorting.quick(arr, 0, arr.length - 1));
  print(sorting.mergofsort(arr, 0, arr.length - 1));
}
