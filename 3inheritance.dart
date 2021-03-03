main(List<String> args) {
  var dog = Dog(); //default dog constructor
  dog.name = 'dart';
  dog.printMember();
  dog.move();

  var dog2 = Dog.myDogClass();
}

class Animal {
  String name = 'Animal';

  Animal() {
    print('Base class Animal');
  }

  Animal.myBaseClass() {
    print('Base class named constructor');
  }

  void printMember() {
    print(this.name);
  }

  void move() {
    print('Animal is walking');
  }
}

class Dog extends Animal {
  Dog() : super() {
    print('Dog class constructor');
  }

  Dog.myDogClass() : super.myBaseClass() {
    print('Dog class Named Constructor');
  }

  @override
  void printMember() {
    print('Dog name: ${this.name}');
  }

  @override
  void move() {
    print('Dog is walking');
  }
}
