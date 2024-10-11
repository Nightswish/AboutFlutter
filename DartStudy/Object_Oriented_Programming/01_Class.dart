void main() {
  // 클래스정의 > 설계, 클래스정의한것으로 결과물을 실제 만드는것 > 인스턴스

  Idol blackPink = Idol( // new 생략가능
  'BlackPink',
  ['지수', '제니', '리사', '로제'],
  );

  print(blackPink.name);
  blackPink.sayHello();
  blackPink.introduce();
  print("---------------------");
  print(blackPink.firstMember);
  blackPink.firstMember = '때우';
  print(blackPink.firstMember);
  print("---------------------");

  Idol bts = Idol(
  'BTS',
  ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );

  bts.sayHello();
  bts.introduce();
  print("---------------------");
  print(bts.firstMember);
  bts.firstMember = 'Wow';
  print(bts.firstMember);
  print("---------------------");

  }

  // Class
  // name (이름) - 변수
  // members (멤버들) - 변수
  // sayHello (인사) - 함수
  // indroduce (멤버소개) - 함수

  // getter / setter
  // 데이터를가져올때 / 데이터를 설정할때
  class Idol {
  String name; // final은 변수를 변경하지 않도록 선언함
  List<String> members;

  Idol(this.name, this.members);

  Idol.fromList(List values)
  : this.members = values[0],
  this.name = values[1];

  void sayHello(){
  print('안녕하세요 ${this.name}입니다.');
  }

  void introduce(){
  print('저희 멤버는 ${this.members}가 있습니다.');
  }

  // getter
  String get firstMember{
  return this.members[0];
  }

  // setter
  set firstMember(String name){
  this.members[0] = name;
  }
}