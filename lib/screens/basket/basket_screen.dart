import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);
  static const String routeName = '/basket';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const BasketScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Basket"),
      body: Center(
        child: ElevatedButtonWidget(
            title: "Go to Home",
            function: () {
              Get.toNamed('/');
            }),
      ),
    );
  }
}
