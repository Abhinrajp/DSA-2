class Stackwrk {
  List<int> arr = [];

  void push(int data) {
    arr.add(data);
  }

  void popdata() {
    if (arr.isNotEmpty) {
      arr.removeLast();
    }
  }

  int? peek() {
    if (arr.isEmpty) {
      print('arrya is empty');
      return null;
    }
    return arr.last;
  }

  void dis() {
    if (arr.isNotEmpty) {
      for (var i = arr.length - 1; i >= 0; i--) {
        print(arr[i]);
      }
    }
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
  // print('the peek element of stack is ${stackwrk.peek()}');

  // print('aafter pop');
  // stackwrk.popdata();
  // stackwrk.dis();

  Stacklink stacklink = Stacklink();

  print('linked list of stack');

  stacklink.push(11);
  stacklink.push(12);
  stacklink.push(13);
  stacklink.push(14);
  stacklink.push(15);
  stacklink.dis();
  print('the peek element of the stack is ${stacklink.peek()}');
  // stacklink.pop();
  // print('aafter pop');
  // stacklink.dis();
}

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Stacklink {
  Node? top = null;
  void push(int data) {
    Node? newnode = Node(data);
    if (top == null) {
      top = newnode;
      return;
    }
    newnode.next = top;
    top = newnode;
    return;
  }

  int? pop() {
    if (top == null) {
      print('stack under flow');
      return null;
    }
    int? pd = top!.data;
    top = top!.next;
    return pd;
  }

  int? peek() {
    if (top == null) {
      print('under flow');
      return null;
    }
    return top!.data;
  }

  void dis() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
