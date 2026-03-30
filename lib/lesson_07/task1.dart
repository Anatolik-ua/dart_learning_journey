import 'dart:math';

void main() {
  final random = Random();
  final numbers = List.generate(100, (_) => random.nextInt(101));

  print('Початковий список:');
  print(numbers);
  print('\n65-й елемент: ${numbers[64]}');

  numbers.insert(49, 1000000000);
  print('Число 1000000000 додано на 50-ту позицію.');

  const valuesToRemove = {24, 45, 66, 88};
  numbers.removeWhere((element) => valuesToRemove.contains(element));
  print('Елементи 24, 45, 66, 88 видалено.');
  print('Оновлений список з видаленими елементами: $numbers');

  var sumDivisibleBy3 = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sumDivisibleBy3 += numbers[i];
    }
  }
  print('\nСума елементів, що діляться на 3: $sumDivisibleBy3');

  final temp = <int>[];
  for (final number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }

  print('Кількість парних елементів (довжина temp): ${temp.length}');
}
