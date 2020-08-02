import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumbasin/module/bloc/blocs.dart';
import 'module/bloc/page_bloc.dart';
import 'module/ui/page/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => PageBloc(),
          ),
          BlocProvider(
            create: (_) => CategoryBloc()..add(FetchCategory()),
          ),
          BlocProvider(
            create: (_) => BannerBloc()..add(FetchBanner()),
          ),
          BlocProvider(
            create: (_) => ProductBloc()..add(FetchProduct()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
        ));
  }
}
