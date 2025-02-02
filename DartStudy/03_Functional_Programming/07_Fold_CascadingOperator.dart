void main() {
  List<int> numbers = [ 1, 3, 5, 7, 9 ];

  final sum = numbers.fold<int>(0, (prev, next){
    print('-------');
    print('previous: $prev');
    print('next: $next');
    print('total: ${prev + next}');

    return prev + next;
  });

  print(sum);

  List<String> words = [
    '안녕하세요 ',
    '다트언어 ',
    '공부중입니다.'
  ];

  final sentence = words.fold<String>('', (prev, next) => prev + next);

  print(sentence);

  final count = words.fold<int>(0, (prev, next) => prev + next.length);

  print(count);
  print('-------');

  List<int> even = [ 2, 4, 6, 8];
  List<int> odd  = [ 1, 3, 5, 7];

  // Cascading Operator
  // ...  를활용함

  print([...even, ...odd]);
  print(even);
  print([...even]);
  print(even == [...even]);
}