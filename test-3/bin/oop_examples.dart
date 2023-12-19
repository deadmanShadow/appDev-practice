class Car {
  String make;
  String model;

  Car(this.make, this.model);

  void start() {
    print("The $make $model is starting.");
  }
}

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

class MathOperations {
  static double pi = 3.14159;

  static double calculateArea(double radius) {
    return pi * radius * radius;
  }
}

class Person {
  String name;
  int age;

  // Named constructor
  Person.custom(this.name, this.age);

  // Default constructor
  Person(this.name, this.age);

  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

class Circle {
  double radius;

  Circle(this.radius);

  void displayInfo() {
    print("Radius: $radius");
  }

  void updateRadius(double newRadius) {
    // Using 'this' to refer to the instance variable
    this.radius = newRadius;
  }
}

void main() {
  // Example 1
  Car myCar = Car("Toyota", "Camry");
  myCar.start();

  // Example 2
  Student student1 = Student("John", 20);
  student1.displayInfo();

  // Example 3
  print("The area is: ${MathOperations.calculateArea(5)}");
  print("The value of pi is: ${MathOperations.pi}");

  // Example 4
  Person person1 = Person("Alice", 25);
  person1.displayInfo();

  Person person2 = Person.custom("Bob", 30);
  person2.displayInfo();

  // Example 5
  Circle myCircle = Circle(5);
  myCircle.displayInfo();

  myCircle.updateRadius(10);
  myCircle.displayInfo();
}
