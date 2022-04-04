import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);
  static const String routeName = '/checkout';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const CheckoutScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Checkout"),
      body: Center(
        child: ElevatedButtonWidget(
            title: "Go to Hom",
            function: () {
              Get.toNamed('/');
            }),
      ),
    );
  }
}
