main(List<String> args) {
  Circle circle = Circle(4);
}

class Circle {
  static const PI = 3.1415;

  int radius = 0;

  Circle(this.radius);

  static double Area(radius) {
    return 0.5 * PI * radius;
  }
}
