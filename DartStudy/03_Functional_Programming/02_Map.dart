void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  final newBlackPink = blackPink.map((x){
    return '블랙핑크 $x';
  });

  print(blackPink);
  print(newBlackPink.toList());

  final newBlackPink2 = blackPink.map((x) => '2_블랙핑크 $x');

  print(newBlackPink2.toList());

  print(blackPink == blackPink);
  print(newBlackPink == blackPink);
  print(newBlackPink == newBlackPink2);

  
}