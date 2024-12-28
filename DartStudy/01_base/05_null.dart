void main() {
  // nullable - null이 될 수 있다.
  // non-nullable - null이 될수 없다

  String name = 'check'; // null이 들어갈 수 없다.

  print(name);

  // name = null; 안됨

  String? name2 = 'blackpink'; // 타입뒤에 ? 하면 null 까지 가능  

  // name2 = null;

  print(name2!); // null이 절대로 들어갈 수 없다. 즉 null이 절대 아니다

}