class Stacck {
  List<String> arrtwo = [];
  List<String> arr = [];

  List<String> push(String str) {
    for (var i = 0; i < str.length; i++) {
      arr.add(str[i]);
    }
    return arr;
  }

  List<String>? pop() {
    if (arr.isEmpty) {
      print('aray is empty');
      return null;
    }
    while (arr.isNotEmpty) {
      arrtwo.add(arr.removeLast());
    }
    return arrtwo;
  }
}

main() {
  String name = 'abhin';
  Stacck stacck = Stacck();
  print(stacck.push(name));
  print(stacck.pop());
}
