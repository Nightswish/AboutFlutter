void main() async {
  Future<String> name = Future.value('한글');
  Future<int> number  = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  await addNumbers(1, 1);
  await addNumbers(2, 2);
}

Future<void> addNumbers(int number1, int number2) async {
    print('계산 시작: $number1 + $number2');

    // 서버 시뮬레이션
    await Future.delayed(Duration( seconds:2 ), (){
      print('계산완료: $number1 + $number2 = ${number1 + number2}');
    });
    
    print('함수 완료');
}