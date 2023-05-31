import 'dart:async';

import 'package:future_example/future_example.dart';

void main(List<String> arguments) async {
  //$ Виконання частини 1: reportUserRole()
  await reportUserRole();
  //# Просто показ секунд, які ми очікуємо для відповіді
  Timer(Duration(seconds: 5), () {
    for (int i = 1; i <= 5; i++) {
      print(i);
    }
  });

  //$ Виконання частини 2: reportLogins()
  await reportLogins();
}
