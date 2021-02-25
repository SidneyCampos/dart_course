void myFirstFun(String param) {
  print("first function $param");
}

String mySecondFun(String param) {
  return "first function $param";
}

//ONDE PAREI - 19:44
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

  print('${myint}');
  print('${myint.sign}'); //verifica o sinal do número, 1 para pos 1 ng 0 p 0
  print('${myint.isOdd}'); //se é ímpar
  print(myint.toString());
  print(mydouble.truncate());
  print(mydouble.round().runtimeType); //saber o tipo do objeto
  print(mybool);
  print(!mybool);
  print(mystring);
  print(mystring2);
  print(mystring3);
  print(mystring.hashCode);
  print(mynumber.bitLength);
  myFirstFun("Parâmetro");
  var res = mySecondFun("String");
  print(res);
}
