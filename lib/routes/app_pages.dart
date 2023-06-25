import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:grocery_app/screens/explore/presentation/explore_screen.dart';
import 'package:grocery_app/screens/splash_screen.dart';
import 'package:grocery_app/screens/welcome_screen.dart';
import '../screens/explore/presentation/explore_binding.dart';
import '../screens/home/presentation/home_binding.dart';
import '../screens/home/presentation/home_screen.dart';
import '../screens/main/main_binding.dart';
import '../screens/main/main_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBindings()
    ),
    GetPage(
      name: AppRoutes.explore,
      page: () => ExploreScreen(),
      binding: ExploreBindings()
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen()
    ),
    GetPage(
      name: AppRoutes.welcome,
      page: () => WelcomeScreen()
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
        HomeBindings(),
        ExploreBindings()
      ]
    )

  ];

}