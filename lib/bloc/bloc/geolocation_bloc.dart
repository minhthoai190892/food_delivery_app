// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_2/repositories/geolocation/geolocation_repository.dart';
import 'package:geolocator/geolocator.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  //tạo biến lưu vị trí
  final GeolocationRepository _geolocationRepository;
  //đăng ký luồng
  StreamSubscription? _geolocationstreamSubscription;
  //khởi tạo
  GeolocationBloc({required GeolocationRepository geolocationRepository})
      : _geolocationRepository = geolocationRepository,
        super(GeolocationLoading());
  @override
  Stream<GeolocationState> mapEventToState(GeolocationEvent event) async* {
    if (event is LoadGeolocation) {
      yield* _mapLoadGeolocationToState();
    } else if (event is UpdateGeolocation) {
      yield* _mapUpdateLoadGeolocationToState(event);
    }
  }

  //xác định vị trí người dùng
  Stream<GeolocationState> _mapLoadGeolocationToState() async* {
    _geolocationstreamSubscription?.cancel(); //hủy đăng ký luồng
    //kho lưu trữ định vị của geolocator      //
    final Position position = await _geolocationRepository
        .getCurrentLocation(); //trả về vị trị người dùng
    //cập nhật vị trí người dùng
    add(UpdateGeolocation(position: position));
    print(position);
  }

  //cập nhật vị trí mới
  Stream<GeolocationState> _mapUpdateLoadGeolocationToState(
      UpdateGeolocation event) async* {
    yield GeolocationLoaded(position: event.position);
  }

  @override
  Future<void> close() {
    _geolocationstreamSubscription?.cancel();
    return super.close();
  }
}
