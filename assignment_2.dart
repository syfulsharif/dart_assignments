void main() {
  String studentName = "Syful Islam Sharif";
  int testScore = 85;
  studentGrade(studentName, testScore);
}

String showGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80 && score <= 89) {
    return 'B';
  } else if (score >= 70 && score <= 79) {
    return 'C';
  } else if (score >= 60 && score <= 69) {
    return 'D';
  } else if (score <= 59) {
    return 'F';
  } else {
    return 'Invalid Grade';
  }
}

void studentGrade(String name, int number) {
  String score = showGrade(number);
  print('$name: $score');
}
