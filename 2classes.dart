main(List<String> args) {
  Car mycar = Car(1999, "Celtinha", false);
  Car mycar2 = Car.yearMade(2005);
  mycar.setYear = 2020;

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
  Car.modelMade(this.model);
  Car.statusMade(this.status);

  int get getYear {
    //para retornar valor, função get deve ter tipo
    if (year == null) return 1999;
    return year;
  }

  set setYear(int sYear) {
    if (sYear < 2000) {
      year = 2000;
      return;
    }
    year = sYear;
  }

  int carLife(int currentYear) {
    return currentYear - year;
  }

  @override //Sobrecarga do objeto toString, muito útil, essa função
  String toString() {
    //É chamada automaticamente ao usar a classe Car
    return "${this.year}, ${this.model}, ${this.status}";
  }
}
