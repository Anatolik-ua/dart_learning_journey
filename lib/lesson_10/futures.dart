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

Future<void> task3() async {
  print('\n--- Task 3: Послідовне виконання ---');

  final stopwatch = Stopwatch()..start();

  final name = await fetchName();
  final ageString = await fetchAge();

  stopwatch.stop();

  print('Мене звати $name, мені $ageString років.');
  print('Послідовне виконання зайняло: ${stopwatch.elapsed.inMilliseconds} мс');
}

Future<void> task4() async {
  print('\n--- Task 4: Паралельне виконання (Future.wait) ---');

  final stopwatch = Stopwatch()..start();

  final results = await Future.wait<String>([fetchName(), fetchAge()]);

  stopwatch.stop();

  final name = results[0];
  final ageString = results[1];

  print('Мене звати $name, мені $ageString років.');
  print('Паралельне виконання зайняло: ${stopwatch.elapsed.inMilliseconds} мс');
}

Future<String> delayedCountdown(int seconds) async {
  print('\n--- Task 5: Зворотний відлік ---');

  for (var i = seconds; i > 0; i--) {
    print('$i...');
    await Future<void>.delayed(const Duration(seconds: 1));
  }

  return 'Старт!';
}

void main() async {
  print('--- Task 1 & 2 ---');

  final name = await fetchName();
  print('Мене звати $name');

  final ageString = await fetchAge();
  final age = int.parse(ageString);
  print('Мені $age ${getAgeLabel(age)}');

  await task3();
  await task4();

  final countdownResult = await delayedCountdown(5);
  print(countdownResult);
}
