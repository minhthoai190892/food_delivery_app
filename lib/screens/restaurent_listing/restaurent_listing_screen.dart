import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';

class RestaurentListingScreen extends StatelessWidget {
  const RestaurentListingScreen({Key? key}) : super(key: key);
  static const String routeName = '/restaurent-listing';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const RestaurentListingScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("RestaurentListing"),
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
