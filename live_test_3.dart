void main() {
  Person sharif = Person(name: 'sharif', age: 32, address: 'ctg');
  sharif.sayHello();
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
