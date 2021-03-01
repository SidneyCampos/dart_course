main(List<String> args) {
  Car mycar = Car(1999, "Celtinha", false);
  Car mycar2 = Car.yearMade(2005);

  print("${mycar.hashCode}");
  print(mycar); //só foi possível devido a sobrecarga no objeto toString
  print(mycar2);
}

class Car {
  int year;
  String model;
  bool status;

  // Car(year, model, status) { //Construtor
  //   this.year = year;
  //   this.model = model;
  //   this.status = status;
  // }
  Car(this.year, this.model, this.status); //Construtor simplificado
  Car.yearMade(this.year); //Construtor 2 - acesso a apenas 1 parametro

  int get getYear {
    if (year == null) return 1999;
    return year;
  }

  @override //Sobrecarga do objeto toString, muito útil
  String toString() {
    return "${this.year}, ${this.model}, ${this.status}";
  }
}
