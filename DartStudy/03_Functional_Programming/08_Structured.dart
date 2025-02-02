void main() {
  List<Map<String, String>> people = [
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': '제니',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    },
  ];

  print(people);

  final parsePeople = people.map(
    (x) => Person(
      name: x['name']!,
      group: x['group']!,
    ),
  ).toList();

  print(parsePeople);

  print('-------');
  for(Person person in parsePeople){
    print(person.name);
    print(person.group);
  }
  print('-------');

  final blackPink = parsePeople.where(
    (x) => x.group == '블랙핑크',
  );

  print(blackPink);

  final result = people.map(
    (x) => Person(
      name: x['name']!,
      group: x['group']!,
    ),
  ).where((x) => x.group == '블랙핑크')
  .fold<int>(
    0, (prev, next) => prev + next.name.length,
  ); // 연결(연동)한 함수에 따라 최종결과값이 변형됨.

  print(result);
}

class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group
  });

// Instance of '클래스명'으로 출력되는 것 변경
  @override
  String toString(){
    return 'Person( name: $name, group: $group)';
  }

  //코드 작성시 Comment 또는 적설하게 나눠서 작성해야함
}