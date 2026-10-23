import 'package:get/get.dart';

import 'view/screen/home_screen.dart';

class AppRoutes {
  static const String home = '/home';

  static final List<GetPage<dynamic>> pages = [
    GetPage(name: home, page: () => const HomeScreen()),
  ];
}
