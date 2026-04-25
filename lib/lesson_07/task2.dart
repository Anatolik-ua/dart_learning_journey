import 'package:dart_learning_journey/lesson_07/homework/names_deepseek.dart';
import 'package:dart_learning_journey/lesson_07/homework/names_gpt.dart';

void main() {
  final commonNames = ukrainianNamesDeepseek.intersection(ukrainianNamesGPT);

  print('--- Спільні імена ---');
  print('Кількість спільних імен: ${commonNames.length}');
  print('Імена: $commonNames');

  final uniqueToGPT = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);

  print('\n--- Імена тільки в GPT ---');
  print('Кількість: ${uniqueToGPT.length}');
  print('Імена: $uniqueToGPT');

  final uniqueToDeepseek = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);

  print('\n--- Імена тільки в Deepseek ---');
  print('Кількість: ${uniqueToDeepseek.length}');
  print('Імена: $uniqueToDeepseek');
}
