void main() {
  //값 비교
  int number1 = 1;
  int number2 = 2;

  print(number1 > number2);
  print(number1 < number2);
  print(number1 >= number2);
  print(number1 <= number2);
  print(number1 == number2);
  print(number1 != number2);
  print("-----------------");
  // 타입비교
  print(number1 is int);
  print(number1 is String);

  print(number1 is! int);
  print(number1 is! String);
  print("-----------------");
  // 논리 비교
  // && - and 조건
  // || - or 조건
  bool result = 12 > 10 && 1 > 0;
  print(result);

  bool result2 = 12 > 10 && 0 > 1;
  print(result2);

  bool result3 = 12 > 10 || 0 > 1;
  print(result3);

  bool result4 = 12 > 10 || 0 > 1;
  print(result4);

  bool result5 = 12 < 10 || 0 > 1;
  print(result5);
}