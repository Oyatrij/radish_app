import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:radish_app/screens/gallery_screen.dart';
import 'package:radish_app/screens/home_screen.dart';
import 'package:radish_app/screens/login_screen.dart';

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(child: HomeScreen(), key: ValueKey('home'))
    ];
  }
//
  List<Pattern> get pathPatterns => ["/"];
}

class LoginLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(child: LoginScreen(), key: ValueKey('login'))
    ];
  }
  List<Pattern> get pathPatterns => ["/login"];
}

class GalleryLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(child: GalleryScreen(), key: ValueKey('gallery'))
    ];
  }
  List<Pattern> get pathPatterns => ["/gallery"];
}