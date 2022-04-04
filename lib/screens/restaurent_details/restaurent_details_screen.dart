import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';

class RestaurentDetailsScreen extends StatelessWidget {
  const RestaurentDetailsScreen({Key? key}) : super(key: key);
  static const String routeName = '/restaurent-details';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const RestaurentDetailsScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Restaurent Details"),
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
