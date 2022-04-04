import 'package:flutter/material.dart';
import 'package:flutter_application_2/bloc/bloc/geolocation_bloc.dart';
import 'package:flutter_application_2/repositories/geolocation/geolocation_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/route_manager.dart';

import 'config/theme.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //khai báo các repository
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GeolocationRepository>(
            create: (_) => GeolocationRepository(),
          )
        ],
        //khai báo các provider
        child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => GeolocationBloc(geolocationRepository: context.read<GeolocationRepository>())..add(LoadGeolocation()),)
            ],
            child: GetMaterialApp(
              
              // theme: theme() ,
              theme: theme(),
              // home: HomeScreen(),
              // onGenerateRoute: AppRoute.onGenerateRoute,
              // initialRoute: HomeScreen.routeName,
              getPages: [
                GetPage(name: '/', page: () => const HomeScreen()),
                GetPage(name: '/location', page: () => const LocationScreen()),
              ],
            )));
  }
}
