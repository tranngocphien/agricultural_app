import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:grocery_app/screens/account/presentation/account_screen.dart';
import 'package:grocery_app/screens/cart/presentation/cart_binding.dart';
import 'package:grocery_app/screens/explore/presentation/explore_screen.dart';
import 'package:grocery_app/screens/place_order/presentation/place_order_screen.dart';
import 'package:grocery_app/screens/product_details/presentation/product_details_screen.dart';
import 'package:grocery_app/screens/rate_product/presentation/rate_product_screen.dart';
import 'package:grocery_app/screens/sign_in/presentation/sign_in_screen.dart';
import 'package:grocery_app/screens/splash_screen.dart';
import 'package:grocery_app/screens/welcome_screen.dart';
import '../screens/account/presentation/account_binding.dart';
import '../screens/category_collection/presentation/category_collection_binding.dart';
import '../screens/category_collection/presentation/category_collection_screen.dart';
import '../screens/explore/presentation/explore_binding.dart';
import '../screens/home/presentation/home_binding.dart';
import '../screens/home/presentation/home_screen.dart';
import '../screens/main/main_binding.dart';
import '../screens/main/main_screen.dart';
import '../screens/order_accepted_screen.dart';
import '../screens/order_history/presentation/order_history_binding.dart';
import '../screens/order_history/presentation/order_history_page.dart';
import '../screens/place_order/presentation/place_order_bindings.dart';
import '../screens/product_details/presentation/product_details_binding.dart';
import '../screens/rate_product/presentation/rate_product_binding.dart';
import '../screens/sign_in/presentation/sign_in_binding.dart';
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
        ExploreBindings(),
        CartBinding(),
        AccountBinding()
      ]
    ),
    GetPage(
      name: AppRoutes.productDetail,
      page: () => ProductDetailsScreen(),
      binding: ProductDetailBindings()
    ),
    GetPage(
      name: AppRoutes.placeOrder,
      page: () => PlaceOrderScreen(),
      binding: PlaceOrderBinding()
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => SignInScreen(),
      binding: SignInBinding()
    ),
    GetPage(
      name: AppRoutes.setting,
      page: () => AccountScreen(),
      binding: AccountBinding()
    ),
    GetPage(
      name: AppRoutes.historyOrder,
      page: () => OrderHistoryScreen(),
      binding: OrderHistoryBinding()
    ),
    GetPage(
      name: AppRoutes.categoryCollection,
      page: () => CategoryCollectionScreen(),
      binding: CategoryCollectionBinding()
    ),
    GetPage(
      name: AppRoutes.orderSuccess,
      page: () => OrderAcceptedScreen(),
    ),
    GetPage(
      name: AppRoutes.rateProduct,
      page: () => RateProductScreen(),
      binding: RateProductBinding()
    )

  ];

}