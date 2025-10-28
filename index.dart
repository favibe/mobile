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
  int point;
  print(point); //null(throws an error)

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
  return 'Hello $name, you are $age years old.';
}
