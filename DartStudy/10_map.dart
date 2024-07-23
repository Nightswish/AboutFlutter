void main() {
  // Key / Value 
  Map<String, String> dictionary = {
    'Harry Potter': '해리포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  print(dictionary);

  Map<String, bool> isHarryPotter = {};

  isHarryPotter.addAll({
    'Harry Potter': true,
    'Hermione Granger': true,
    'Spiderman': false,
  });

  print(isHarryPotter);

  print(dictionary['Hermione Granger']);

  isHarryPotter['Spiderman'] = true;
  print(isHarryPotter);

  isHarryPotter.remove('Harry Potter');
  print(isHarryPotter);

  print(isHarryPotter.keys);
  print(isHarryPotter.values);
}