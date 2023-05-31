//! Вправа: Попрактикуйтеся з async й await

Future<String> fetchRole() {
  return Future<String>.value('tester');
}

Future<int> fetchLoginAmount() {
  int count = 0;
  for (int i = 0; i < 5; i++) {
    fetchRole().whenComplete(() {
      count++;
    });
  }

  //! Програма встигає отримувати всі дані від fetchRole() про вхід
  return Future<int>.delayed(Duration(seconds: 5), () => count);
  //! Програма не встигає отримувати дані від fetchRole() про вхід, хоча дані вже є
  // return Future<int>.value(count);
}

//? Частина 1: reportUserRole()
Future<void> reportUserRole() async {
  // String userRole = await fetchRole();
  String userRole = '';
  for (int i = 0; i < 5; i++) {
    userRole = await fetchRole();
    print("User role: $userRole + $i");
  }
}

//? Частина 2: reportLogins()
Future<void> reportLogins() async {
  int login = await fetchLoginAmount();
  print("Total number of logins: $login");
}
