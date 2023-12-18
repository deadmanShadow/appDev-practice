void main() {
  var x = 10;
  var y = 40;
  var z = x + y;

  print(z);

  var myCountry = "my country name is Bangladesh";
  print(myCountry);
  var city = ['Dhaka', 'Cumilla', 'Panchagarh'];

  print(city[0]);

  var person = {
    'name': 'Joseph',
    'age': 40,
    'city': 'London',
    'height': '5 feet 7 inch'
  };
  print(person['age']);

  var a = 10;
  var b = 3;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  var r = 10;
  print(r++);
  print(++r);

  const thisYear = 2023;
  print(thisYear);

  var numbers = [1, 2, 3, 4, 5];

  numbers.add(6);
  print("After add(6): $numbers");

  numbers.addAll([7, 8, 9]);
  print("After addAll([7, 8, 9]): $numbers");

  print("After insert(2, 10): $numbers");

  print("After insertAll(4, [11, 12, 13]): $numbers");

  var fruits = ["Apple", "Banana", "Orange", "Mango"];

  fruits[1] = "Grapes";
  print("After updating at index 1: $fruits");

  fruits.remove("Orange");
  print("After remove('Orange'): $fruits");

  fruits.removeWhere((fruit) => fruit.length > 5);
  print("After removeWhere((fruit) => fruit.length > 5): $fruits");

  fruits.removeAt(0);
  print("After removeAt(0): $fruits");
}
