var globalVar = 'This variable is global';
main(List<String> args) {
  var res = addNumbers();
  print(res(20, 45));

  print(globalVar);
  print(myString);
  print(myFun);
  var res2 = mySecondFun();
  res2();
}

Function addNumbers() {
  Function add = (int a, int b) => a + b;
  return add;
}

// Closure é uma função espeecial que acessa o scope parente
String myString = 'This is global variable';

Function myFun = () {
  String myString = "This is inside muFun function";
  print(myString);
};

Function mySecondFun = () {
  Function insideMySecondFun() {
    String myString = "This is inside mySecondFun";
    print(myString);
  }

  return insideMySecondFun;
};
