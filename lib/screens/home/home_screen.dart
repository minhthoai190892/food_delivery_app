import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Home Screen"),
      body:  Column(
        children: [
          Center(
            child: SvgPicture.asset('assets/svg-seeklogo.com.svg'),
            // child: ElevatedButtonWidget(
            //     title: "Location",
            //     textStyle: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white),
            //     function: () {
            //       Get.toNamed('/location');
            //     }),
          ),
          ElevatedButtonWidget(
                title: "Location",
                textStyle: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white),
                function: () {
                  Get.toNamed('/location');
                }),
        ],
      ),
    );
  }
}
