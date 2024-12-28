void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redvelvet = GirlGroup('레드벨벳벳');

  bts.sayName();
  redvelvet.sayName();

  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print(redvelvet is IdolInterface);
  print(redvelvet is BoyGroup);
  print(redvelvet is GirlGroup);
}

// interface
abstract class IdolInterface{ // abstract 선언시 instance 선언 방지
  String name;

  IdolInterface(this.name);

  void sayName();
}

class BoyGroup implements IdolInterface{
  String name;

  BoyGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface{
  String name;

  GirlGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}