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
