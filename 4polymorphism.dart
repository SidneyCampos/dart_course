main(List<String> args) {
  Animal animal1 = Dog();
  Animal animal2 = Cow();

  animal1.printMember();
  animal2.printMember();
}

class Animal {
  String name = 'Animal';

  Animal() {
    print("Life started");
  }

  void printMember() {
    print("${this.name}");
  }

  void move() {
    print("Animal is walking");
  }
}

class Dog extends Animal {
  String name = 'Dog';
  Dog() : super() {}

  @override
  void printMember() {
    print("${this.name}");
  }
}

class Cow extends Animal {
  String name = 'Cow';

  Cow() : super() {}

  @override
  void printMember() {
    print("${this.name}");
  }
}
