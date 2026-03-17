void main() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи
/// - age (int) — твій вік
/// - height (double) — твій зріст у метрах
/// - name (String) — твоє ім'я
/// - isStudent (bool) — чи ти студент
void primitives() {
  final age = 39;
  final height = 1.75;
  final name = 'Толя';
  final isStudent = false;

  print('Мене звати $name. Мені $age років.');
  print('Зріст: $height');
  print('Чи є студентом: $isStudent');
  print('Типи змінних:');
  print('  age: ${age.runtimeType}');
  print('  height: ${height.runtimeType}');
  print('  name: ${name.runtimeType}');
  print('  isStudent: ${isStudent.runtimeType}');
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки
/// 3. Map — 3 предмети та їх оцінки
void collections() {
  final favoriteColors = ['червоний', 'зелений', 'синій'];
  final uniqueGrades = {10, 12, 11};
  final subjectGrades = {'математика': 10, 'фізика': 11, 'хімія': 12};

  print('Улюблені кольори: $favoriteColors.');
  print('Але найулюбленіший - ${favoriteColors[0]}');
  print('Унікальні оцінки: $uniqueGrades');
  print('Предмети та їх оцінки: $subjectGrades');
}

/// Завдання 3: var, final, const
/// 1. Створи змінну через var — та зміни її декілька разів
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
void varFinalConst() {
  var city = 'Київ';
  print('Місто проживання: $city');
  city = 'Львів';
  print('Місто після зміни: $city');
  city = 'Петропавлівська Борщагівка';
  print('Місто після другої зміни: $city');

  final country = 'Україна';
  print('Країна: $country');

  const daysInWeek = 7;
  print('Кількість днів у тижні: $daysInWeek');
}

/// Завдання 4: Record
/// Створи іменований та позиційний record з твоїм ім'ям та віком і виведи.
void record() {
  final personRecord = (name: 'Толя', age: 39);
  print('Іменований record: $personRecord');
  print("Ім'я з record: ${personRecord.name}");
  print('Вік з record: ${personRecord.age}');

  final positionalRecord = ('Толя', 39);
  print('Позиційний record: $positionalRecord');
  print("Ім'я з позиційного record: ${positionalRecord.$1}");
  print('Вік з позиційного record: ${positionalRecord.$2}');
}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {}
