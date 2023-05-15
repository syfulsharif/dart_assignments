void main() {
  //Task # 1 :create three Car objects
  Car tesla = Car(brand: 'Tesla', model: 'Y', year: 2020, milesDriven: 15000);
  Car rivian =
      Car(brand: 'Rivian', model: 'R1S', year: 2022, milesDriven: 10000);
  Car audi =
      Car(brand: 'Audi', model: 'Q-8 e-tron', year: 2021, milesDriven: 5000);

  

  //Task # 2 : Drive each car a different number of miles using the drive() method
  tesla.drive(1500);
  rivian.drive(2500);
  audi.drive(3500);

  porshe.drive(25.0);

  // Task 3 : Print out the brand, model, year, and miles driven for each car
  //Car # 1
  print(tesla.getBrand());
  print(tesla.getModel());
  print(tesla.getYear());
  print(tesla.getMilesDriven());

  //Car # 2
  print(rivian.getBrand());
  print(rivian.getModel());
  print(rivian.getYear());
  print(rivian.getMilesDriven());

  //Car # 3
  print(audi.getBrand());
  print(audi.getModel());
  print(audi.getYear());
  print(audi.getMilesDriven());

  // Task # 4 : print out the age of each car using the getAge() method
  print(tesla.getAge());
  print(rivian.getAge());
  print(audi.getAge());

  //Task # 5 :  print out the total number of Car objects created using the numberOfCars
  print(Car.numberOfCars);
}

//This a Car Class
class Car {
  late String brand;
  late String model;
  late int year;
  late double milesDriven;
  static int numberOfCars = 0;
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

  static int countingCars() {
    return numberOfCars++;
  }

  //Class Constructor Method for the Car Class
  Car(
      {required String brand,
      required String model,
      required int year,
      required double milesDriven}) {
    this.brand = brand;
    this.model = model;
    this.year = year;
    this.milesDriven = milesDriven;
    countingCars();
  }
}
