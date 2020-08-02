part of 'banner_bloc.dart';

abstract class BannerState extends Equatable {
  const BannerState();
}

class BannerInitial extends BannerState {
  @override
  List<Object> get props => [];
}

class BannerLoading extends BannerState {
  @override
  List<Object> get props => [];
}

class BannerLoaded extends BannerState {
  final List<BannerModel> banner;
  BannerLoaded({@required this.banner});
  @override

  List<Object> get props => [banner];
}

class BannerError extends BannerState {
  final String msg;
  BannerError({this.msg});
  @override
  List<Object> get props => [msg];
}
