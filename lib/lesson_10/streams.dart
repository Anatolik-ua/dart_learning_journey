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
  await secondStream.listen((int number) {
    print('Отримано: $number');
  }).asFuture<void>();

  print('--- Task 6 завершено повністю ---');
}

Future<void> task7() async {
  print('\n--- Task 7: Stream.periodic ---');

  final periodicStream = Stream<int>.periodic(
    const Duration(seconds: 1),
    (int computationCount) => computationCount + 1,
  );

  await for (final int number in periodicStream.take(10)) {
    print('$number...');
  }
}

Future<void> task8() async {
  print('\n--- Task 8: StreamController ---');

  final controller = StreamController<String>();
  final completer = Completer<void>();

  controller.stream.listen(
    (final String value) {
      print('Отримано з контролера: $value');
    },
    onDone: () {
      print('Стрім завершено');
      completer.complete();
    },
  );

  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');
  controller.add('Yoohoo');

  await controller.close();
  await completer.future;
}

void main() async {
  await task6(); // через .asFuture(), щоб не вмішувалося в інші таски
  await task7();
  await task8();
}
