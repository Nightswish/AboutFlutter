void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니', '제니'];
  
  print(blackPink);

  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys);
  print(blackPinkMap.values);
  print(blackPinkMap.keys.toList());
  print(blackPinkMap.values.toList());

  Set blackPinkSet = Set.from(blackPink); // Set -> List

  print(blackPinkSet.toList());
}