//função de uma linha
String retStr() => "this is dart language";

main(List<String> args) {
  int myvar = 5;

  print("value: $myvar");
  print("add: ${6 + 5}");
  print("cap: ${"name".toUpperCase()}");
  //NULL AWARE checar se é nulo, se não, você pode assignar um valor
  int myInt;

  myInt ??= 7; //se nulo recebe 7

  print(myInt);
  //CONDITIONAL property access
  String mystring;

  print(mystring?.length); //evita gerar exception, coloca nulo se obj n existir
  //lists
  final mylist = [1, 2, 3];
  final myset = {2, 3, 4, 5}; //valores não pode repetir
  final mymap = {'a': 1, 'b': 2};

  final mylist2 = <int>[];
  final myset2 = <int>{};
  final mymap2 = <String, int>{};

  //Cascata, fazer uma serquência de operações no objeto
  car mycar = car(2000, "honda")
    ..year = 1999
    ..drive();
}

//Cascata, fazer uma serquência de operações no objeto
class car {
  int year;
  String name;

  car(this.year, this.name);
  car.madeYear(this.year);

  void drive() => "driving the car";
}
