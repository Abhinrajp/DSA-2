class Stackwrk {
  List<int> arr = [];
  void push(int data) {
    int i = 0;
    arr.insert(i, data);
    i++;
  }

  int? pop() {
    if (arr.isEmpty) {
      print('stack under flow');
      return null;
    }
    int p = arr.first;
    arr.removeAt(0);
    return p;
  }

  int? peek() {
    if (arr.isEmpty) {
      print('stack under flow');
      return null;
    }
    return arr.last;
  }

  void dis() {
    if (arr.isEmpty) {
      print('stack under flow');
      return;
    }
    print(arr);
  }
}

main() {
  // Stackwrk stackwrk = Stackwrk();
  // stackwrk.push(10);
  // stackwrk.push(20);
  // stackwrk.push(30);
  // stackwrk.push(40);
  // stackwrk.push(50);
  // stackwrk.dis();
  // print('after pop');
  // print('the poped data is ${stackwrk.pop()}');
  // stackwrk.dis();
  LInked lInked = LInked();
  lInked.push(10);
  lInked.push(20);
  lInked.push(30);
  lInked.push(40);
  lInked.push(50);
  lInked.dis();
  print('the pooped element is ${lInked.pop()}');
  lInked.dis();
}

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LInked {
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

  void dis() {
    if (top == null) {
      print('stack under flow');
      return;
    }
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  int? pop() {
    if (top == null) {
      print('stack under flow');
      return null;
    }
    int? p = top!.data;
    top = top!.next;
    return p;
  }
}
