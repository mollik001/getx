import 'package:get/get.dart';
import 'package:getx/app/modules/home/binding/home_binding.dart';
import 'package:getx/app/modules/home/view/home_view.dart';

class AppRoutes {
  static const String initialRoute = '/home';

  static final routes = [
    GetPage(name: '/home', page: () => const HomeView(), binding: HomeBinding())
  ];
}
