import 'package:mocky/mocky.dart';

void main() {
  Mocky.setLocale(Locale.uk);
  print(Mocky.getLocale());

  final mocky = Mocky();
  final uniqueWords = <String>{};

  while (uniqueWords.length < 100) {
    uniqueWords.add(Mocky.word());
  }

  final randomNouns = uniqueWords.toList();
  print('\nЗгенеровано 100 слів. Перші 5: ${randomNouns.take(5).toList()}');

  final nounsMap = <String, int>{
    for (final word in randomNouns) word: word.length,
  };

  final nounsMapFiltered = <String, int>{};

  nounsMap.forEach((word, length) {
    if (length % 2 == 0) {
      nounsMapFiltered[word] = length;
    }
  });

  print('\nКлючі з парною довжиною слова (всього ${nounsMapFiltered.length}):');
  print(nounsMapFiltered.keys.toList());
}
