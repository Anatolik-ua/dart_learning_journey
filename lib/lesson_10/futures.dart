import 'dart:async';

Future<String> fetchName() async {
  await Future<void>.delayed(const Duration(seconds: 2));
  return 'Анатолій';
}

Future<String> fetchAge() async {
  await Future<void>.delayed(const Duration(milliseconds: 1500));
  return '25';
}

String getAgeLabel(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return 'рік';
  }
  if ([2, 3, 4].contains(age % 10) && ![12, 13, 14].contains(age % 100)) {
    return 'роки';
  }
  return 'років';
}

void main() async {
  print('--- Task 1 & 2 ---');

  final name = await fetchName();
  print('Мене звати $name');

  final ageString = await fetchAge();
  final age = int.parse(ageString);
  print('Мені $age ${getAgeLabel(age)}');
}
