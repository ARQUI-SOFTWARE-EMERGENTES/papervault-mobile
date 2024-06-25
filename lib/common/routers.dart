import 'package:flutter/material.dart';
import 'package:mobile_app/pages/search_page.dart';
import 'package:mobile_app/pages/search_results.dart';
import 'package:mobile_app/pages/sign_up.dart';
import 'package:mobile_app/pages/login_page.dart';
import 'package:mobile_app/pages/upload_page.dart';

const String ROUTE_HOME = '/search';
const String ROUTE_LOGIN = '/login';
const String ROUTE_SIGN_UP = '/signup';
const String ROUTE_SEARCH = '/search';
const String ROUTE_SEARCH_RESULTS = '/results';
const String ROUTE_UPLOAD = '/upload';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case ROUTE_SIGN_UP:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case ROUTE_SEARCH:
        return MaterialPageRoute(builder: (_) => SearchPage());
      case ROUTE_SEARCH_RESULTS:
        return MaterialPageRoute(builder: (_) => SearchResultsPage());
      case ROUTE_UPLOAD:
        return MaterialPageRoute(builder: (_) => UploadPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}