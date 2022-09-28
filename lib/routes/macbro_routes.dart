import 'package:flutter/material.dart';
import 'package:udevsapp/screens/home/home_page.dart';

class MacBroRoutes {
  static final MacBroRoutes _instance = MacBroRoutes._init();
  static MacBroRoutes get instance => _instance;
  MacBroRoutes._init();
  // ignore: body_might_complete_normally_nullable
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case "/home":
        return MaterialPageRoute(builder: (ctx) =>  HomePage());
    }
  }
}
