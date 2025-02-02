void main() {
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9
  ];

  final result = numbers.reduce((prev, next){
    print('-------');
    print('previous: $prev');
    print('next: $next');
    print('total: ${prev + next}');

    return prev + next;
  });

  print(result);

  final result2 = numbers.reduce((prev, next) => prev + next);

  print('---- 2 ---');
  print(result2);

  List<String> words = [
    '안녕하세요 ',
    '다트언어 ',
    '공부중입니다.'
  ];

  final sentence = words.reduce((prev, next) => prev + next);

  print(sentence);

// return type이 다르므로 실행되지않음
  // word.reduce((prev, next) => prev.length + next.length); 
}