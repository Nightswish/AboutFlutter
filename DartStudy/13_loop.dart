void main() {
  //for loop
  for(int i =0; i < 10; i++){
    print(i);
  }

  int total =0;

  List<int> numbers = [1,2,3,4,5,6];

  for(int i =0; i < numbers.length; i++){
    total += numbers[i];
  }
  print(total);

  total = 0;

  for(int number in numbers){
    print(number);
    total += number;
  }
  print(total);

  //while
  total = 0;

  while(total < 10){
    total += 1;
  }
  print(total);

  total = 0;
  do {
    total += 1;
  } while(total < 10);
  print(total);

  total = 0;
  while(total < 10){
    total += 1;
    
    if(total == 5){
      break;
    }
  }
  print(total);

  total = 0;
  for(int i =0; i < 10; i++){
    total += 1;

    if(total == 6){
      break;
    }
  }
  print(total);

  total = 0;
  for(int i =0; i < 10; i++){
    total += 1;

    if(total == 6){
      continue; // skip
    }
    print(i);
  }
}