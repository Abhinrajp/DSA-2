class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Stacklist {
  Node? top = null;

  void dis() {
    if (top == null) {
      print('stack is empty');
      return;
    }
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  int? popele() {
    if (top == null) {
      print('under flow');
      return null;
    }
    int? popdata = top!.data;
    top = top!.next;
    return popdata;
  }

  int? peek() {
    if (top == null) {
      print('under flow');
      return null;
    }
    return top!.data;
  }

  void push(int data) {
    Node? newnode = Node(data);
    if (top == null) {
      top = newnode;
      return;
    }
    newnode.next = top;
    top = newnode;
  }
}

main() {
  Stacklist stacklist = Stacklist();
  stacklist.push(10);
  stacklist.push(20);
  stacklist.push(30);
  stacklist.push(40);
  stacklist.push(50);
  stacklist.dis();
  // print("the peek element in the stack is  ${stacklist.peek()}");
  print('the poped element is ${stacklist.popele()}');
  stacklist.dis();
}
