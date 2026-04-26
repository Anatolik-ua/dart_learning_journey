import 'dart:async';

Future<void> task6() async {
  print('--- Task 6: Stream.fromIterable ---');

  final numbers = <int>[1, 2, 3, 4, 5];

  final numberStream = Stream<int>.fromIterable(numbers);
  final secondStream = Stream<int>.fromIterable(numbers);

  print('Вивід через await for:');
  await for (final int number in numberStream) {
    print(number);
  }

  print('\nВивід через listen:');
  secondStream.listen((int number) {
    print('Отримано: $number');
  });
}

void main() async {
  await task6();
}
