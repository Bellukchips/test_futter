part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToHomePage extends PageEvent{
  @override
  List<Object> get props =>[];

}
class GoToSplashPage extends PageEvent{
  @override
  List<Object> get props =>[];

}
