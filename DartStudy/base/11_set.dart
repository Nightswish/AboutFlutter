void main() {
  //중복값이 들어갈수 없음. 자등으로 중복 처리함. 
  final Set<String> names = {
    'Flutter',
    'Black Pink',
  };

  print(names);

  names.add('Jenny');
  print(names);

  names.remove('Jenny');
  print(names);

  print(names.contains('Flutter'));
}