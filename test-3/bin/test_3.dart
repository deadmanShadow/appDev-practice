class Animal {
  void makeSound() {
    print("Generic animal sound");
  }
}

class Dog extends Animal {
  String name;
  int age;

  Dog(this.name, this.age);

  void bark() {
    print("$name is barking!");
  }
}

class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    _balance += amount;
  }

  double getBalance() {
    return _balance;
  }
}

abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Flyable {
  void fly() {
    print("Flying");
  }
}

class Bird implements Flyable {
  @override
  void fly() {
    print("Bird is flying");
  }
}

class Point {
  double x, y;

  Point(this.x, this.y);

  Point.origin() {
    x = 0;
    y = 0;
  }
}

class Complex {
  double real, imaginary;

  Complex(this.real, this.imaginary);

  Complex operator +(Complex other) {
    return Complex(real + other.real, imaginary + other.imaginary);
  }
}

class MathOperations {
  static double add(double a, double b) {
    return a + b;
  }

  static double multiply(double a, double b) {
    return a * b;
  }
}

class Square {
  double side;

  Square(this.side);

  factory Square.createSquare(double side) {
    return Square(side);
  }
}

void main() {
  // Example 1
  Dog myDog = Dog("Buddy", 3);
  myDog.bark();

  // Example 2
  Animal myAnimal = Dog("Charlie", 2);
  myAnimal.makeSound();

  // Example 3
  BankAccount account = BankAccount();
  account.deposit(100.0);
  print("Balance: ${account.getBalance()}");

  // Example 4
  Shape myCircle = Circle();
  myCircle.draw();

  // Example 5
  Bird myBird = Bird();
  myBird.fly();

  // Example 6
  Point point1 = Point(2, 3);
  Point point2 = Point.origin();
  print("Point 1: (${point1.x}, ${point1.y})");
  print("Point 2: (${point2.x}, ${point2.y})");

  // Example 7
  Complex a = Complex(1, 2);
  Complex b = Complex(3, 4);
  Complex result = a + b;
  print("Result: ${result.real} + ${result.imaginary}i");

  // Example 8
  print("Sum: ${MathOperations.add(2, 3)}");
  print("Product: ${MathOperations.multiply(2, 3)}");

  // Example 9
  Square square = Square.createSquare(5);
  print("Square side: ${square.side}");
}
