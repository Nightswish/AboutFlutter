void main() {
  // 클래스정의 > 설계, 클래스정의한것으로 결과물을 실제 만드는것 > 인스턴스

  Idol blackPink = Idol(); // new 생략가능

  blackPink.sayHello();
}

// Class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// indroduce (멤버소개) - 함수

// constructor (생성자)
class Idol {
  String name = 'BlackPink';
  List<String> members = ['지수', '제니', '리사', '로제'];

  void sayHello(){
    print('안녕하세요 BlackPink입니다.');
  }

  void introduce(){
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다.');
  }
}