void main() {
  final String name = 'DartStudy'; // 값변경 불가능

  print(name);

   const String name2 = 'Idols';

   print(name2);

  //  name2 = 'Rockband'; // 값변경 불가능

  // 변수 타입 생략 가능 ex. var name = 1
  final name3 = 'Wow';
  const name4 = 'Who';

  print( '$name3 $name4' );

//시간과 날짜를 저장하는 데이터 타입: DateTime
  DateTime now = DateTime.now(); // 코드가 실행되는 순간에 대한 시간과 날짜

  print(now);

  final DateTime now1 = DateTime.now(); // build 되는 시간을 몰라도됨

  print(now1);

  // const DateTime now2 = Datetime.now(); // build 되는시간을 알아야함
}