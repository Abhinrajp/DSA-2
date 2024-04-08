class Node {
  String key;
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
    Node newnode = Node(key, data);
    int index = key.hashCode % size;
    if (table![index] == null) {
      table![index] = newnode;
    } else {
      newnode.next = table![index];
      table![index] = newnode;
    }
  }

  get(String key) {
    int index = key.hashCode % size;
    if (table![index] == null) {
      print('there is no data');
      return;
    }
    Node? current = table![index];
    while (current != null) {
      if (current.key == key) {
        print('the $key found at the positon of $index :  ${current.data}');
        return;
      }
      current = current.next;
    }
    print('the keyy not here');
  }

  dlt(String key) {
    Node? prev;
    int index = key.hashCode % size;
    if (table![index] == null) {
      print('there is no data');
      return;
    }
    Node? current = table![index];
    while (current != null && current.key != key) {
      prev = current;
      current = current.next;
    }
    if (current == null) {
      return;
    }
    if (prev == null) {
      print('the $key deleted from the positon of $index :  ${current.data}');
      table![index] = current.next;
    } else {
      print('the $key deleted from the positon of $index :  ${current.data}');
      prev.next = current.next;
    }
  }
}

main() {
  Hashtable hashtable = Hashtable(10);
  hashtable.add('name', 'abhin');
  hashtable.add('boj', 22);
  hashtable.add('plce', 'edp');
  hashtable.add('job', 'developer');
  hashtable.get('job');
  hashtable.dlt('plce');
  hashtable.get('plce');
}
