void main() {
  // if
  int number = 2;

  if(number & 2 == 0){
    print('값이 짝수입니다.');
  }else{
    print('값이 홀수입니다.');
  }

  int number2 = 4;

  if(number % 3 == 0){
    print('나머지가 0입니다.');
  }else if(number % 3 == 1){
    print('나머지가 1입니다.');
  }else{
    print('나머지가 2입니다.');
  }

  // switch
  int number3 = 3;
  switch(number % 3){
    case 0:
      print('나머지가 0입니다.');
      break;

    case 1:
      print('나머지가 1입니다.');
      break;

    default:
      print('나머지가 2입니다.');
      break;
  }
}