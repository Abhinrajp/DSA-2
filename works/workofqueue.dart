class Queueoflist {
  List<int> arr = [];
  void enqueue(int data) {
    arr.add(data);
  }

  void dequeue() {
    if (arr.isEmpty) {
      print('array is empty');
      return;
    }
    arr.removeAt(0);
  }

  int? peek() {
    if (arr.isEmpty) {
      print('array is empty');
      return null;
    }
    return arr.first;
  }

  void dis() {
    if (arr.isEmpty) {
      print('arryay is empty');
      return;
    }
    for (var i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
    return;
  }
}

main() {
  // Queueoflist queueoflist = Queueoflist();
  // queueoflist.enqueue(111);
  // queueoflist.enqueue(222);
  // queueoflist.enqueue(333);
  // queueoflist.enqueue(444);
  // queueoflist.enqueue(555);
  // queueoflist.dis();
  // print('the peek element is${queueoflist.peek()}');
  // print('after pop');
  // queueoflist.dequeue();
  // queueoflist.dis();
  Queueoflinked queueoflinked = Queueoflinked();
  queueoflinked.enqueue(11);
  queueoflinked.enqueue(12);
  queueoflinked.enqueue(13);
  queueoflinked.enqueue(14);
  queueoflinked.enqueue(15);
  queueoflinked.dis();
  // print('the peek element of the queue is ${queueoflinked.peek()}');
  print('popedd element');
  queueoflinked.dequeue();
  queueoflinked.dis();
}

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Queueoflinked {
  Node? front = null;
  void enqueue(int data) {
    Node? newnode = Node(data);
    if (front == null) {
      front = newnode;
      return;
    }
    Node? current = front;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newnode;
    return;
  }

  void dequeue() {
    if (front == null) {
      print('stack under flow');
      return;
    }
    front = front!.next;
    return;
  }

  void dis() {
    if (front == null) {
      print('under flow');
      return;
    }
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  int? peek() {
    if (front == null) {
      print('under flow');
      return null;
    }
    return front!.data;
  }
}
