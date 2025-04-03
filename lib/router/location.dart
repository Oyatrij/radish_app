import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:radish_app/screens/home_screen.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(child: HomeScreen(), key: ValueKey('home'))
    ];
  }

  List<Pattern> get pathPatterns => ["/"];
}