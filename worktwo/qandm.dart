class Mandq {
  int partting(List<int> arr, int low, int high) {
    int i = low + 1;
    int j = high;
    int pivot = arr[low];
    int temp;
    while (i <= j) {
      if (arr[i] <= pivot) {
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

  List<int> quick(List<int> arr, int low, int high) {
    if (low < high) {
      int p = partting(arr, low, high);
      quick(arr, low, p - 1);
      quick(arr, p + 1, high);
    }
    return arr;
  }

  List<int> mrggg(List<int> arr, int low, int mid, int high) {
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

  List<int> msorrt(List<int> arr, int low, int high) {
    if (low < high) {
      int mid = (high + low) ~/ 2;
      msorrt(arr, low, mid);
      msorrt(arr, mid + 1, high);
      mrggg(arr, low, mid, high);
    }
    return arr;
  }
}

main() {
  Mandq mandq = Mandq();
  List<int> arr = [9, 8, 7, 6, 5, 4, 3, 2, 1];
  print(arr);
  // print(mandq.quick(arr, 0, arr.length - 1));
  print(mandq.msorrt(arr, 0, arr.length - 1));
}
