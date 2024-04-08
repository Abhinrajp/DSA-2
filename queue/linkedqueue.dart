class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Linkedqueue {
  Node? front = null;

  void enque(int data) {
    Node? newnode = Node(data);
    if (front == null) {
      front = newnode;
      return;
    }
    Node? curent = front;
    while (curent!.next != null) {
      curent = curent.next;
    }
    curent.next = newnode;
    return;
  }

  void deque() {
    if (front == null) {
      print('under flow');
      return;
    }
    front = front!.next;
    return;
  }

  void dis() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

main() {
  Linkedqueue linkedqueue = Linkedqueue();
  linkedqueue.enque(10);
  linkedqueue.enque(20);
  linkedqueue.enque(30);
  linkedqueue.enque(40);
  linkedqueue.enque(50);
  linkedqueue.dis();
  print('deewuedd');
  linkedqueue.deque();
  linkedqueue.dis();
}
