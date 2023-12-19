void main() {
  var myCity = {"Dhaka", "Khulna", "Barishal"};
  myCity.add("Comilla");
  print(myCity);

  Set<int> mySet = Set();
  mySet.add(1);
  mySet.add(2);
  mySet.add(3);
  print("Set with add: $mySet");

  Set<int> anotherSet = Set();
  anotherSet.addAll([4, 5, 6]);
  print("Set with addAll: $anotherSet");

  mySet.clear();
  print("Cleared Set: $mySet");

  print("Is set empty? ${mySet.isEmpty}");

  print("Set length: ${mySet.length}");

  Map<String, int> myMap = Map();
  myMap['one'] = 1;
  myMap['two'] = 2;

  myMap['three'] = 3;
  print("Map with new element: $myMap");

  print("Map keys: ${myMap.keys}");
  print("Map values: ${myMap.values}");

  myMap['three'] = 3;
  myMap.remove('one');
  print("Map after removing 'one': $myMap");

  myMap.clear();
  print("Cleared Map: $myMap");

  var condition = true;

  if (condition) {
    print("Condition is true");
  } else {
    print("Condition is false");
  }

  var day = 'Monday';

  switch (day) {
    case 'Monday':
      print("It's the start of the week!");
      break;
    case 'Friday':
      print("It's almost the weekend!");
      break;
    default:
      print("It's a regular day.");
  }

  for (int i = 1; i <= 5; i++) {
    print("Iteration $i");
  }

  List<int> numbers = [1, 2, 3, 4, 5];

  for (var number in numbers) {
    print("Number: $number");
  }

  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};

  for (var number in uniqueNumbers) {
    print("Unique Number: $number");
  }

  var count = 0;

  while (count < 5) {
    print("Count: $count");
    count++;
  }

  count = 0;

  do {
    print("Count: $count");
    count++;
  } while (count < 5);

  void sayHello() {
    print("Hello!");
  }

  sayHello();

  void greetPerson(String name) {
    print("Hello, $name!");
  }

  greetPerson("John");

  int add(int a, int b) {
    return a + b;
  }

  var result = add(3, 5);
  print("Result: $result");

  print("Hello from the main function!");
}
