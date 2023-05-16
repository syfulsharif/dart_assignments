void main() {
  //Task 1 create an object of the Person class and initialise
  Person sharif = Person(name: 'sharif', age: 32, address: 'ctg');
  //Task 2 Call the sayHello() method
  sharif.sayHello();
  //Task 3 Call the getAgeInMonths() metho
  print(sharif.getAgeInMonths());
}

class Person {
  late String name;
  late int age;
  late String address;
  void sayHello() {
    print('Hello, my name is $name');
  }

  int getAgeInMonths() {
    return age * 12;
  }

  Person({required String name, required int age, required String address}) {
    this.name = name;
    this.age = age;
    this.address = address;
  }
}
