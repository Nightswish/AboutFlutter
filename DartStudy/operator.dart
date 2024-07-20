void main() {
  // 연산 및 추가 기능
  int number = 2;

  print(number);
  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);

  print("-------");

  print(number % 2);
  print(number % 3);

  print(number);

  print("-------");

  number++;

  print(number);

  number--;

  print(number);

  print("-------");

  double num = 4.0;

  print(num);

  num += 1;
  print(num);

  num -= 1;
  print(num);

  num *= 2;
  print(num);

  num /=2;
  print(num);

  print("-------");
  //null
  double? num2 = 4.0;
  print(num2);

  num2 = 2.0;
  print(num2);

  num2 = null;
  print(num2);

  num2 ??= 3.0;
  print(num2);
}