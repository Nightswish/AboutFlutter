void main() {
  String name = 'somin';
  String name2 = 'taew';

  print(name);
  print(name2);

  //var
  var name3 = '리사';
  var num = 20;

  print(name3.runtimeType);

  print(name + name2);
  print(name + ' ' + name2);

  print('${name.runtimeType} ${name2}');

  print('$name $name2');

  dynamic str = 'var와 비슷';
  dynamic number = 1;

  var stvar = 'blackpink';

  print(str);
  print(number);

  print(str.runtimeType);
  print(number.runtimeType);
  print( '${stvar.runtimeType} $stvar');


  str = 2;
  // stvar = 5;


}
