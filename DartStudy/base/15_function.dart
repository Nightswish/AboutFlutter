void main() { //가장먼저 실행이 되는 함수
  addNumbers();
  addNumbers();
  addNumbers1(20,30,40);
  addNumbers2(10);
  addNumbers3(x: 25, y: 16, z: 30);
  addNumbers4(y:5, x: 25);
  int result = returnNum(x:20, y:25);
  int result2 = returnNum2(10, y:25);
  print('sum: ${result + result2}');
  int result3 = arrow(20, y:25);
  print('arrow: $result3');
}

// 함수의 역할 을 주석으로 써놓기
// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
addNumbers(){
  print('addNumbers 실행');
  int x = 10;
  int y = 20;
  int z = 30;

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 ==0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}
// prameter / argument - 매개변수
// positional parameter - 순서가 중요하며 값이 꼭 필요함
addNumbers1(int x, int y, int z){
  print('addNumbers1 실행');

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 ==0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// optional parameter - 값이 있어도 되고 없어도 되는 파라미터
addNumbers2(int x, [int y = 10, int z = 20]){
  print('addNumbers2 실행');

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 ==0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}
// named parameter - 이름이있는 파라미터(순서가중요하지않다)
addNumbers3({
  required int x,
  required int y,
  required int z,
}){
  print('addNumbers3 실행');

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 ==0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}
// named parameter + optional
addNumbers4({
  required int x,
  required int y,
  int z = 16,
}){
  print('addNumbers4 실행');

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 ==0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

int returnNum({
  required int x,
  required int y,
  int z = 10,
}){
  print('return 실행');

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 ==0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

  return sum;
}

int returnNum2(int x, {
  required int y,
  int z = 10,
}){
  print('return2 실행');

  int sum = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (sum % 2 ==0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

  return sum;
}

// arrow function - 화살표 함수
// 바로 다음에 오는 값이 반환되는 값
int arrow(int x, {
  required int y,
  int z = 30,
}) => x + y + z;