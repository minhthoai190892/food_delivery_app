import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgets.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({Key? key}) : super(key: key);
  static const String routeName = '/voucher';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const VoucherScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Voucher"),
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
