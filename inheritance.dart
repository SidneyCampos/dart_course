main(List<String> args) {}

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
}
