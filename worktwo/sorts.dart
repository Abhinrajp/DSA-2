class Sortings {
  List<int> buble(List<int> arr) {
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

  List<int> quick(List<int> arr, int low, int high) {
    if (low < high) {
      int p = partition(arr, low, high);
      quick(arr, low, p - 1);
      quick(arr, p + 1, high);
    }
    return arr;
  }

  int partition(List<int> arr, int low, int high) {
    int i = low + 1;
    int j = high;
    int pivot = arr[low];
    int temp;
    while (i <= j) {
      if (arr[i] <= pivot && i <= high) {
        i++;
      }
      if (arr[j] > pivot) {
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

  List<int> mersorrt(List<int> arr, int low, int high) {
    if (low < high) {
      int mid = (high + low) ~/ 2;
      mersorrt(arr, low, mid);
      mersorrt(arr, mid + 1, high);
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
    for (var index = low; index <= high; index++) {
      arr[index] = array[index];
    }
    return arr;
  }
}

main() {
  List<int> arr = [5, 2, 8, 1, 9, 3, 7, 4, 6];
  Sortings sortings = Sortings();
  print(arr);
  // print(sortings.buble(arr));
  // print(sortings.insertion(arr));
  // print(sortings.selection(arr));
  // print(sortings.quick(arr, 0, arr.length - 1));
  print(sortings.mersorrt(arr, 0, arr.length - 1));
}
