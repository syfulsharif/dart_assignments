class Car {
  late String brand;
  late String model;
  late int year;
  late double milesDriven;
  static late int numberOfCars;
  //a method that takes a double parameter representing the
  // number of miles driven and adds it to the milesDriven
  double drive(double miles) {
    return milesDriven += miles;
  }

  //a method that returns the value of the milesDriven property
  double getMilesDriven() {
    return milesDriven;
  }

  //A method that returns the value of the brand property
  String getBrand() {
    return brand;
  }

  //A method that returns the value of the model property

  String getModel() {
    return model;
  }

  //A method that returns the value of the year property
  int getYear() {
    return year;
  }

  //getAge(): a method that returns the age of the car (i.e. the difference between the
  //current year and the year property)

  int getAge() {
    int _currentYear = 2023;
    return _currentYear - year;
  }
}
