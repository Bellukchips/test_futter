part of 'banner_bloc.dart';

abstract class BannerEvent extends Equatable {
  const BannerEvent();
}
class FetchBanner extends BannerEvent{
  @override
  List<Object> get props =>[];

}