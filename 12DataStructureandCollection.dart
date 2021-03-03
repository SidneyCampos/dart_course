import 'dart:collection';

//Lista é um grupo ordenado simples de objetos
//Existem 2 tipos de lista, fixed length and global list
main(List<String> args) {
  var mylist = List(); //growable list
  mylist.add(5);
  mylist.add(8);
  print(mylist);

  List<int> myfixedList = List(4);
  print(myfixedList);

  for (var i in myfixedList) {
    print(i);
  }

  myfixedList.forEach((element) => print("element: ${element}"));

  for (var i = 0; i < myfixedList.length; i++) {
    print('old school for loop: ${myfixedList[i]}');
  }

  print(mylist.removeAt(0));

  print(mylist);

  mylist.clear();
  print(mylist);

  var mylist2 = [1, 2, 3, 4, 5, 6, 7, 8];

  print(mylist2);
  print(mylist2.runtimeType);
  print(mylist2.take(4).toList());
  print(mylist.skip(2).toList());
  print(mylist.contains(6));

  //SET data structure - coleção ordenada de itens únicos
  Set<String> progLang = {'C', 'Java', 'Dart', 'C'};
  print(progLang);
  Set<int> myset = Set();
  myset.add(4);
  print(myset);

  for (var i in progLang) {
    print(i);
  }
  //MAP
  Map<String, int> grades = Map();
  Map<int, int> myMap = {1: 0, 2: 50, 3: 100};

  grades['pass'] = 50;
  grades['fail'] = 0;
  grades['perfect'] = 100;

  print(grades['pass']);

  for (var i in grades.keys) {
    print(i);
  }

  grades.forEach((key, value) => print("${key} : ${value}"));

  //QUEUE
}
