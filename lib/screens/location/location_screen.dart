import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../bloc/bloc/geolocation_bloc.dart';
import '../../widgets/widgets.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);
  static const String routeName = '/location';
  static Route route() {
    return MaterialPageRoute(
        builder: (context) => const LocationScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarWidget("Location"),
      body: Stack(
        children: [
          //
          BlocBuilder<GeolocationBloc, GeolocationState>(
            builder: (context, state) {
              if (state is GeolocationLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
             else if (state is GeolocationLoaded) {
                return  Gmap(lat: state.position.latitude, lng: state.position.longitude);
              } else {
                return const Text("Something went wrong");
              }
            },
          ), //map
          Positioned(
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/svg-seeklogo.com.svg",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Expanded(child: LocationSearchBox()),
                ],
              ),
            ),
            top: 50,
            left: 20,
            right: 20,
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("SAVE"),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
