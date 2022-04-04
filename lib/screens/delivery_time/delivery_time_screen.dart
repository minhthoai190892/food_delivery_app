import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';

class DeliveryTimeScreen extends StatelessWidget {
  const DeliveryTimeScreen({Key? key}) : super(key: key);
  static const String routeName = '/delivery-time';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const DeliveryTimeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("DeliveryTime"),
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
