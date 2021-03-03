//Classe abstrata, é uma classe que serve de modelo para outras classes
//Classe abstrata não pode ser instanciada
main(List<String> args) {
  TvRemoteController tv = TvRemoteController();
  tv.increase();
  print(tv.volume);
}

abstract class RemoteController {
  int volume = 0;
  void increase();
  void decrease();
}

class TvRemoteController extends RemoteController {
  @override
  void decrease() {
    volume--;
    print('decrease volume');
  }

  @override
  void increase() {
    volume++;
    print('increase volume');
  }
}
