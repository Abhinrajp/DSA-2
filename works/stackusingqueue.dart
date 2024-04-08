class Qtostk {
  List<dynamic> stackone = [];
  List<dynamic> stacktwo = [];
  void push(dynamic data) {
    stackone.add(data);
  }

  void pushtwo(dynamic data) {
    stacktwo.add(data);
  }

  List<dynamic>? dis() {
    if (stackone.isEmpty) {
      print('array is empty');
      return null;
    }
    for (var i = stackone.length - 1; i >= 0; i--) {
      stacktwo.add(stackone[i]);
    }
    return stacktwo;
  }
}

main() {
  Qtostk qtostk = Qtostk();
  String a = 'Abhinraj';

  for (var i = 0; i <= a.length - 1; i++) {
    qtostk.push(a[i]);
  }
  List<dynamic>? n = qtostk.dis();
  for (var i = 0; i < n!.length; i++) {
    print(n[i]);
  }
}
