void main() {
  print('=== ЗАПУСК ДОДАТКОВИХ ЗАВДАНЬ ===\n');

  extraTask1(); // FizzBuzz
  extraTask2(); // Система лояльності
  extraTask3(); // Аналізатор пароля

  print('\n=== УСІ ЗАВДАННЯ ВИКОНАНО ===');
}

/// Задача 1: FizzBuzz Lite
/// Виведіть числа від 1 до 30.
/// Якщо число ділиться на 3 — замість числа виведіть "Fizz".
/// Якщо число ділиться на 5 — виведіть "Buzz".
/// Якщо число ділиться і на 3, і на 5 — виведіть "FizzBuzz".
/// В інших випадках виводьте саме число.

void extraTask1() {
  print('--- Задача 1: FizzBuzz ---');
  int i;
  for (i = 1; i <= 30; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('Число $i: FizzBuzz');
    } else if (i % 3 == 0) {
      print('Число $i: Fizz');
    } else if (i % 5 == 0) {
      print('Число $i: Buzz');
    } else {
      print('Число $i');
    }
  }
}

/// Задача 2: Система лояльності
/// Створіть purchaseAmount (сума покупки) та isGoldCardHolder (є золота картка)
/// Якщо сума > 1000 АБО у клієнта є золота картка — знижка 15%.
/// Якщо сума від 500 до 1000 — знижка 5%.
/// В іншому випадку — знижка 0%.
/// Виведіть фінальну суму до сплати.

void extraTask2() {
  print('\n--- Задача 2: Система лояльності ---');
  final double purchaseAmount = 1200;
  final isGoldCardHolder = false;
  double discount = 0;

  if (purchaseAmount > 1000 || isGoldCardHolder) {
    discount = 0.15;
  } else if (purchaseAmount >= 500) {
    discount = 0.05;
  }

  final finalPrice = purchaseAmount * (1 - discount);

  print('Початкова сума: $purchaseAmount грн');
  print('Ваша знижка: ${discount * 100}%');
  print('До сплати: $finalPrice грн');
}

/// Задача 3: Аналізатор пароля
/// Умова: У вас є "секретний" пароль.
/// Програма має перевірити список спроб введення (List).
/// Якщо пароль збігається — вивести "Доступ дозволено" і зупинити цикл (break).
/// Якщо пароль занадто короткий (менше 5 символів) —
/// вивести "Надто короткий пароль" і перейти до наступної спроби (continue).
/// Якщо спроба не вірна — вивести "Спробуйте ще раз".

void extraTask3() {
  print('\n--- Задача 3: Аналізатор пароля ---');
  const secretPassword = 'dart_weider_2026';
  final attempts = ['123', 'admin', 'qwerty', 'dart_weider_2026', 'password'];

  for (final attempt in attempts) {
    // 1. Перевірка на довжину (continue)
    if (attempt.length < 5) {
      print('Пароль "$attempt": Надто короткий! ⚠️ (Пропускаємо)');
      continue;
    }

    // 2. Перевірка на збіг (break)
    if (attempt == secretPassword) {
      print('Пароль "$attempt": Доступ дозволено! ✅ (Зупиняємо пошук)');
      break;
    }

    // 3. Якщо не підійшов
    print('Пароль "$attempt": Невірно. ❌ (Шукаємо далі)');
  }
}
