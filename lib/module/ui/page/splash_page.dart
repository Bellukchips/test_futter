part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  starSplash() async {
    var duration = const Duration(milliseconds: 1500);
    return Timer(duration, () {
      context.bloc<PageBloc>().add(GoToHomePage());
    });
  }

  @override
  void initState() {
    super.initState();
    starSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Container(
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/ic_logo.png"),
              Text(
                "tumbasin",
                style: pinkTextFont.copyWith(fontSize: 40),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
