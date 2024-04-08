class Stacklist {
  List<dynamic> stack = [];

  void push(dynamic data) {
    int i = 0;
    stack.insert(i, data);
    i++;
  }

  void popele() {
    if (stack.isEmpty) {
      print('stack down flow');
      return;
    }
    stack.removeLast();
  }

  int? peek() {
    if (stack.isEmpty) {
      print('down flow');
      return null;
    }
    return stack.last;
  }

  void dis() {
    if (stack.isEmpty) {
      print('down flow');
      return;
    }
    for (var i = stack.length - 1; i >= 0; i--) {
      print(stack[i]);
    }
  }

  void rev() {
    List<dynamic> revstack = [];
    while (stack.isNotEmpty) {
      revstack.add(stack.removeLast());
    }
    stack = revstack;
  }

  // void sp(dynamic data) {
  //  List<String> str=data.s
  //   if (stack.isEmpty) {
  //     stack.add(newnode);
  //   }
  // }
}

main() {
  Stacklist stacklist = Stacklist();
  stacklist.push(10);
  stacklist.push(11);
  stacklist.push(12);
  stacklist.push(13);
  stacklist.push(14);
  stacklist.dis();
  stacklist.rev();
  stacklist.dis();
  // String a = 'apple';
  // for (var i = 0; i < a.length; i++) {
  //   stacklist.push(a[i]);
  // }
  // stacklist.dis();
}
