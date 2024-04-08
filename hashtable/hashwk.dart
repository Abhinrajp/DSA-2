class Node {
  String? key;
  dynamic data;
  Node? next;
  Node(this.key, this.data);
}

class Hashtable {
  List<Node?>? table;
  int size;
  Hashtable(this.size) {
    table = List.generate(size, (index) => null);
  }
  add(String key, dynamic data) {
    int index = key.hashCode % size;
    Node? newnode = Node(key, data);
    if (table?[index] == null) {
      table?[index] = newnode;
    } else {
      newnode.next = table?[index];
      table?[index] = newnode;
    }
  }

  get(String key) {
    int index = key.hashCode % size;
    if (table?[index] == null) {
      print('empty');
      return;
    }
    Node? ccurrent = table?[index];
    while (ccurrent != null) {
      if (ccurrent.key == key) {
        print(
            'the key of $key find at the position of $index : ${ccurrent.data}');
        return;
      }
      ccurrent = ccurrent.next;
    }
    print('key is not found');
  }
}
