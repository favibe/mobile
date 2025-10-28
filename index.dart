//void main
//void main() {

//}

//dart variables
void main() {
  var name = "mario";
   print(name);
  
  const age = 12;
    print(age);
  print(age +1);
  
  print('my name is $name');

//Type Annotations
String city = "new york";
  city = "los angeles";
  print(city);
  int num = 34;
  print(num);

  bool isNow = true;
  isNow = false;
  print(isNow);

  double price = 10.5;
  price = 11.4;
  print(price);

  //nukllable value
 // int point;
  //print(point); //null(throws an error)

  int? score;
  print(score); //null (no error)

  //functions
  final greeting = greet('luigi', 30);
  print(greeting);

  //passing name functions with named parameters
  final greeting2 = greet2(name: 'yoshi', age: 40);
  print(greeting2);

  //Ex2
  final greeting3 = greet3();
  print(greeting3);
  
  //Ex 3
  final greeting4 = greetUser(name: 'peach');
  print(greeting4);
  final greeting5 = greetUser(age: 22, name: 'Elle');
  print(greeting5);

}

//functions
greet (String name, int age) {
  return 'hello $name, you are $age years old';
}
//named function parameters


greet2 ({required String name, required int age}) {
  return 'hello $name, you are $age years old';
}
//Ex2 
greet3 ({String name = 'guest', int age = 0}) {
  return 'hello $name, you are $age years old';
}
//Ex 3
String greetUser({required String name, int? age}) {
  return 'Hello $name, you are ${age ?? 0} years old.';

  List<int>numbers = [1,2,3,4,5,6];


}

void now() {
  // 1️⃣ Create a list of strings
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print('Original list: $fruits');

  // 2️⃣ Add items
  fruits.add('Mango');                 // adds one item
  fruits.addAll(['Pineapple', 'Grapes']); // adds multiple items
  print('After adding: $fruits');

  // 3️⃣ Remove items
  fruits.remove('Banana');  // removes by value
  print('After removing Banana: $fruits');

  fruits.removeAt(0);       // removes by index (0 = first item)
  print('After removing index 0: $fruits');

  fruits.removeRange(1, 3); // removes a range of items (index 1 up to but not including 3)
  print('After removing range(1, 3): $fruits');

  // 4️⃣ Shuffle the list
  fruits.shuffle(); // randomly changes the order of items
  print('After shuffle: $fruits');

  // 5️⃣ Get index of an element
  int index = fruits.indexOf('Mango');
  print('Index of Mango: $index');

  // 6️⃣ Add a few back to see index change
  fruits.add('Apple');
  fruits.add('Mango');
  print('List again: $fruits');

  // If multiple same items exist, indexOf returns the FIRST one
  print('First index of Mango: ${fruits.indexOf('Mango')}');
  print('Last index of Mango: ${fruits.lastIndexOf('Mango')}');



  //set
   Set<String> food = {'Rice', 'Beans', 'Yam'};
  print(food); // {Rice, Beans, Yam}

  //add
  food.add('Plantain');;
  print(food); // {Rice, Beans, Yam, Plantain}

  //remove
  food.remove('Beans');
  print(food); // {Rice, Yam, Plantain}     

  //clear
  food.clear();
  print(food); // {}
}

//control flows
void controlFlows() {
  int score = 75;

  //if-else
  if (score >= 90) {
    print('A');
  } else if (score >= 80) {
    print('B');
  } else if (score >= 70) {
    print('C');
  } else {
    print('F');
  }

  //switch-case
  String grade;
  switch (score) {
    case 90:
      grade = 'A';
      break;
    case 80:
      grade = 'B';
      break;
    case 70:
      grade = 'C';
      break;
    default:
      grade = 'F';
  }
  print('Grade: $grade');

  //for loop
  for (int i = 0; i < 5; i++) {
    print('Iteration: $i');
  }

  //while loop
  int count = 0;
  while (count < 5) {
    print('Count: $count');
    count++;
  }
}
List<int> numbers = [10, 25, 40, 55, 70, 90];

// Filter out numbers less than 50
var smallNumbers = numbers.where((n) => n < 50);
void showSmallNumbers() {
  // Convert the Iterable to a List for clearer output
  final list = smallNumbers.toList();
  print(list); // [10, 25, 40]
}

//showSmallNumbers();

//classes

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  String greet() {
    return 'Hello, my name is $name and I am $age years old.';
  }
}

void go() {
  var person1 = Person('Mario', 30);
  print(person1.greet());

  var person2 = Person('Luigi', 28);
  print(person2.greet());
}


//method override
class Animal {
  void makeSound() {
    print('Someeee sound');
  }
} 
class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark');
  }
}

//generics


void damn () {



  var food = collections('Menu Items', ["noodles", pizza, roast, pies]);
}
class collections {
  String name;
  List data;

  collections(this.name, this.data);

  randomItem() {
    data.shuffle();

    return data[0];
  }
}

//genrrics with type constraint
class collections2<T extends String> {
  String name;
  List<T> data;

  collections2(this.name, this.data);

  randomItem() {
    data.shuffle();

    return data[0];
  }
}
var pizza = "pizza";
var roast = "roast";
var pies = "pies";


/