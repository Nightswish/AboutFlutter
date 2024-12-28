void main() {
  // List 
  List<String> blackPink = ['Jenni', 'Jisu', 'Rose', 'Risa'];
  List<int> numbers = [1,2,3,4,5];

  print(blackPink);
  print(numbers);

  //index 순서 - 0부터시작
  print(blackPink[3]);
  print(numbers[1]);
  // print(blackPink[4]); error

  print(blackPink.length); // 길이, 1부터 시작

  blackPink.add('gg');
  print(blackPink);

  blackPink.remove('gg');
  print(blackPink);

  print(blackPink.indexOf('Jisu'));
}