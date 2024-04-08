import 'dart:ffi';

class Sorted {
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

  List<int> sele(List<int> arr) {
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

  int part(List<int> arr, int low, int high) {
    int i = low + 1;
    int j = high;
    int pivot = arr[low];
    int temp;
    while (i <= j) {
      if (arr[i] < pivot) {
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
      int p = part(arr, low, high);
      quick(arr, low, p - 1);
      quick(arr, p + 1, high);
    }
    return arr;
  }

  List<int> merge(List<int> arr, int low, int mid, int high) {
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

  List<int> mergsort(List<int> arr, int low, int high) {
    if (low < high) {
      int mid = (high + low) ~/ 2;
      mergsort(arr, low, mid);
      mergsort(arr, mid + 1, high);
      merge(arr, low, mid, high);
    }
    return arr;
  }
}

class Stackfinal {
  List<int> array = [];
  void push(int data) {
    int i = 0;
    array.insert(i, data);
    i++;
  }

  int? pop() {
    if (array.isEmpty) {
      print('stack underflow');
      return null;
    }
    int p = array.first;
    array.removeAt(0);
    return p;
  }

  void dis() {
    if (array.isEmpty) {
      print('array is empty');
      return;
    }
    print(array);
  }

  int? peek() {
    if (array.isEmpty) {
      print('arrray is empty');
      return null;
    }
    return array.first;
  }
}

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedStack {
  Node? top = null;
  void push(int data) {
    Node? newnode = Node(data);
    if (top == null) {
      top = newnode;
      return;
    }
    newnode.next = top;
    top = newnode;
  }

  int? pop() {
    if (top == null) {
      return null;
    }
    int? p = top!.data;
    top = top!.next;
    return p;
  }

  void dis() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  int? peek() {
    if (top == null) {
      return null;
    }
    return top!.data;
  }
}

class Queuefinal {
  List<int> array = [];
  void enque(int data) {
    array.add(data);
  }

  int? dequ() {
    if (array.isEmpty) {
      print('aray is empty');
      return null;
    }
    int d = array.first;
    array.removeAt(0);
    return d;
  }

  void dis() {
    if (array.isEmpty) {
      print('array is empty');
      return;
    }
    print(array);
  }

  int? peek() {
    if (array.isEmpty) {
      print('arrya is empty');
      return null;
    }
    return array.first;
  }
}

main() {
  // List<int> arr = [10, 22, 7, 14, 3, 18, 25, 1, 9];
  // Sorted sorted = Sorted();
  // print(arr);
  // print(sorted.buble(arr));
  // print(sorted.insertion(arr));
  // print(sorted.sele(arr));
  // print(sorted.quick(arr, 0, arr.length - 1));
  // print(sorted.mergsort(arr, 0, arr.length - 1));
  // Stackfinal stackfinal = Stackfinal();
  // stackfinal.push(10);
  // stackfinal.push(20);
  // stackfinal.push(30);
  // stackfinal.push(40);
  // stackfinal.push(50);
  // stackfinal.dis();
  // print('the peek element of the stack is ${stackfinal.peek()}');
  // print('the poped element from the stack is ${stackfinal.pop()}');
  // stackfinal.dis();
  // LinkedStack linkedStack = LinkedStack();
  // linkedStack.push(11);
  // linkedStack.push(22);
  // linkedStack.push(33);
  // linkedStack.push(44);
  // linkedStack.push(55);
  // linkedStack.dis();
  // print('the pek element of the stack is ${linkedStack.peek()}');
  // print('the poped element from the stack is ${linkedStack.pop()}');
  // linkedStack.dis();
  // print('the poped element from the stack is ${linkedStack.pop()}');
  // linkedStack.dis();
  // Queuefinal queuefinal = Queuefinal();
  // queuefinal.enque(11);
  // queuefinal.enque(22);
  // queuefinal.enque(33);
  // queuefinal.enque(44);
  // queuefinal.enque(55);
  // queuefinal.dis();
  // print('the peek element is ${queuefinal.peek()}');
  // print('the poped element is ${queuefinal.dequ()}');
  // queuefinal.dis();
  Hashtablee hashtablee = Hashtablee(10);
  hashtablee.add('name', 'abhin');
  hashtablee.add('place', 'edp');
  hashtablee.add('age', 22);
  hashtablee.add('course', 'flutter');
  hashtablee.get('age');
}

class Nodetab {
  String key;
  dynamic data;
  Nodetab? next;
  Nodetab(this.key, this.data);
}

class Hashtablee {
  List<Nodetab?>? table;
  int size;
  Hashtablee(this.size) {
    table = List.generate(size, (index) => null);
  }
  add(String key, dynamic data) {
    int index = key.hashCode % size;
    Nodetab? newnode = Nodetab(key, data);
    if (table![index] == null) {
      table![index] = newnode;
      return;
    }
    newnode.next = table![index];
    table![index] = newnode;
  }

  get(String key) {
    int index = key.hashCode % size;
    if (table![index] == null) {
      print('this table is empty');
      return;
    }
    Nodetab? current = table![index];
    while (current != null) {
      if (current.key == key) {
        print('the $key found at the position of $index : ${current.data}');
        return;
      }
      current = current.next;
    }
  }

  dlt(String key) {
    int index = key.hashCode % size;
  }
}
