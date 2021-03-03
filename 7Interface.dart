main(List<String> args) {
  Order ord = PizzaOrder();

  ord.takeOrder();
}

class Order {
  void takeOrder() {}

  void updateOrder() {}
}

class Payments {
  void acceptPayment() {}
}

class PizzaOrder implements Order, Payments {
  @override
  void acceptPayment() {
    print("pizza order accept payment");
  }

  @override
  void takeOrder() {
    print("pizza order take order");
  }

  @override
  void updateOrder() {
    print("pizza order is ready");
  }
}
