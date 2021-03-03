//usar qualquer código de classe em múltiplas hierarquias
main(List<String> args) {
  Dog dog = Dog();

  dog.printName();
  dog.Run();
}

class Animal {
  String name = 'Animal';

  Animal() {
    print('Animal constructor');
  }

  void printName() {
    print(this.name);
  }
}

// O propósito de misturar classes é reusar classe existente
class Dog extends Animal with Cat {
  String name = 'Dog';

  Dog() : super() {}
}

class Cat {
  void Run() {
    print('The animal is running with its four legs');
  }
}
