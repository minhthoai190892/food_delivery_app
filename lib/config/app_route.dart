import 'package:flutter/material.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    // ignore: avoid_print
    print("The Route is:${settings.name}");
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case RestaurentDetailsScreen.routeName:
        return RestaurentDetailsScreen.route();
        case RestaurentListingScreen.routeName:
        return RestaurentListingScreen.route();
        case VoucherScreen.routeName:
        return VoucherScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: appBarWidget("Error"),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}
