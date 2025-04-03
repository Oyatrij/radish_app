import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:radish_app/router/location.dart';
import 'package:radish_app/screens/splash_screen.dart';

final _routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
        beamLocations: [
          HomeLocation(),
          LoginLocation(),
          GalleryLocation()
        ]
    ),
    guards: [
      BeamGuard(
        pathPatterns: ['/'],
        check: (context, location) => true,
        beamToNamed: (origin, target) => '/login',
      ),
      BeamGuard(
        pathPatterns: ['/gallery'],
        check: (context, location) => true,  // 항상 통과하도록 설정
      )
    ]
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //퓨처 함수로 로딩구현
    return MaterialApp(
      home: FutureBuilder<Object>(
        future: Future.delayed(Duration(seconds: 3), () => 100),
        builder: (context, snapshot) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 900),
            child: _splashLoadingWidget(snapshot),
          );
        }
      ),
    );
  }

  Widget _splashLoadingWidget(AsyncSnapshot<Object> snapshot) {
    if(snapshot.hasError) {
      print('에러가 발생하였습니다.');
      return Text('에러가 발생했습니다', style: TextStyle(color: Colors.red));
    }
    else if(snapshot.hasData) return RadishApp();
    else return SplashScreen();
  }
}

class RadishApp extends StatelessWidget {
  const RadishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: _routerDelegate ,
    );
  }
}

