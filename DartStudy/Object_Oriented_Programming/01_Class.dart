void main() {
  // 클래스정의 > 설계, 클래스정의한것으로 결과물을 실제 만드는것 > 인스턴스

  Idol blackPink = const Idol( // new 생략가능
    'BlackPink',
    ['지수', '제니', '리사', '로제가'],
  );

  print(blackPink.name);
  blackPink.sayHello();
  blackPink.introduce();

  Idol bts = Idol(
    'BTS',
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );

  bts.sayHello();
  bts.introduce();

  Idol blackPink1 = Idol.fromList(
    [
      ['지수', '제니', '리사', '로제가'],
      'BlackPink',
    ]
  );
  blackPink1.sayHello();
  blackPink1.introduce();


  print("----------------------");
  Idol blackPink3 = Idol( // new 생략가능
    'BlackPink',
    ['지수', '제니', '리사', '로제가'],
  );

  Idol blackPink4 = Idol( // new 생략가능
    'BlackPink',
    ['지수', '제니', '리사', '로제가'],
  );
  
  print(blackPink3 == blackPink4);

  Idol blackPink5 = const Idol( // new 생략가능
    'BlackPink',
    ['지수', '제니', '리사', '로제가'],
  );

  Idol blackPink6 = const Idol( // new 생략가능
    'BlackPink',
    ['지수', '제니', '리사', '로제가'],
  );

  print(blackPink5 == blackPink6);
}

// Class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// indroduce (멤버소개) - 함수

// constructor (생성자)
class Idol {
  final String name; // final은 변수를 변경하지 않도록 선언함
  final List<String> members;

  const Idol(this.name, this.members); 

  //name constructor
  Idol.fromList(List values)
    : this.members = values[0],
      this.name    = values[1];

  void sayHello(){
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce(){
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}