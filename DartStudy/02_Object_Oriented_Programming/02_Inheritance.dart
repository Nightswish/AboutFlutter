void main() {
  print('------ Idol ------');
  Idol apink = Idol(name: '에이핑크', memberCount:5);

  apink.sayNmae();
  apink.sayMemberCount();
  
  print('------- Boy -----');
  BoyGroup bts = BoyGroup('BTS', 7);

  bts.sayMemberCount();
  bts.sayNmae();
  bts.sayMale();

  print('------- Girl -----');
  GirlGroup redvelvet = GirlGroup('Red Velvet', 5);

  redvelvet.sayMemberCount();
  redvelvet.sayNmae();
  redvelvet.sayFemale();

  print('------- Type Comparison ------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print('------- Type Comparison 2 ------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print('------- Type Comparison 3 ------');
  print(redvelvet is Idol);
  print(redvelvet is BoyGroup);
  print(redvelvet is GirlGroup);
}

// 상속 - inheritance
// 상속 받으면 부모 클래스의 모든속성을 자식클래스가 부여받는다.
class Idol{
  String name;
  int memberCount;

  Idol({
    required this.name,
    required this.memberCount,
  });

  void sayNmae(){
    print('저는 ${this.name} 입니다.');
  }

  void sayMemberCount(){
    print('${this.name}은 ${this.memberCount}명의 멤버가 있습니다.');
  }
}

class BoyGroup extends Idol{
  BoyGroup(
    String name,
    int memberCount,
  ): super( // 부모클래스의 Constructor
   name: name,
   memberCount: memberCount,
  );

  void sayMale(){
    print('저는 남자 아이돌입니다.');
  }
}

class GirlGroup extends Idol{
  GirlGroup(
    String name,
    int memberCount,
  ): super(
   name: name,
   memberCount: memberCount,
  );

  void sayFemale(){
    print('저는 여자 아이돌입니다.');
  }
}