import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tumbasin/module/models/models.dart';
import 'package:tumbasin/module/services/services.dart';

part 'banner_event.dart';
part 'banner_state.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  BannerBloc() : super(BannerInitial());

  @override
  Stream<BannerState> mapEventToState(
    BannerEvent event,
  ) async* {
    if (event is FetchBanner) {
      yield BannerLoading();
      try {
        List<BannerModel> banner = await BannerService.getBanner();
        yield BannerLoaded(banner: banner);
      } catch (e) {
        yield BannerError(msg: e.toString());
      }
    }
  }
}
