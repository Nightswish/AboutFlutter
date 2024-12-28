void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
}

// Method - function (class 내부에 있는 함수)
// Override - 덮어쓰다 (우선시하다)

class TimesTwo{
  final int number;

  TimesTwo(
    this.number,
  );

  //method
  int calculate(){
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(
    int number,
  ) : super(number);

  @override // 생략가능하지만 쓰는게 직관적이다.
  int calculate(){
    // return number * 4;
    return super.calculate() * 2; //this를 하는 순간 무한반복...
  }
}