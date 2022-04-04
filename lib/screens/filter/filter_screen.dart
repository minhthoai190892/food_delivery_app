import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const String routeName = '/filter';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const FilterScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Filter"),
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
