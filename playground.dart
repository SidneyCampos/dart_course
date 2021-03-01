void myFirstFun(String nome, String email, int idade) {
  print("$nome possuidor do email: $email tem $idade anos de idade");
}

String mySecondFun({String nome, String idade, String sexo}) {
  return "$nome tem $idade anos e é do sexo $sexo";
} //necessita explicitar o parâmetro quando chamar a função

String defaultParam(String name, int age, {int year = 1999}) {
  return "name: $name - age : $age - year : $year";
} //O último parâmetro não é obrigatório pois tem um valor padrão

String optionParam(String name, int age, [int year]) {
  return "name: $name - age : $age - year : $year";
} //O último parâmetro é opcional

//ONDE PAREI - 34:52
main(List<String> args) {
  int myint = 0;
  double mydouble = 45.45454545;
  bool mybool = false;
  //Strings - Sequência de utf-16 unidades de código
  String mystring = 'This is a dart string';
  String mystring2 = "This is dart string in double quote";
  String mystring3 = """ this is darts multi line string values
                         which is written for testing""";
  var mynumber = 6; //var é usado quando não queremos explicitar o tipo

  // print('${myint}');
  // print('${myint.sign}'); //verifica o sinal do número, 1 para pos 1 ng 0 p 0
  // print('${myint.isOdd}'); //se é ímpar
  // print(myint.toString());
  // print(mydouble.truncate());
  // print(myd:ouble.round().runtimeType); //saber o tipo do objeto
  // print(mybool);
  // print(!mybool);
  // print(mystring);
  // print(mystring2);
  // print(mystring3);
  // print(mystring.hashCode);
  // print(mynumber.bitLength);
  //myFirstFun("Parâmetro");
  myFirstFun('Sidney Campos', 'sidneycampos@gmail.com', 30);
  var par = mySecondFun(nome: "Sidney Campos", idade: "30", sexo: "masculino");
  print(par);
  var def = defaultParam('Sidney', 30);
  print(def);
}
