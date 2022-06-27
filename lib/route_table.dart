import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/page/provider_test_page01.dart';
import 'package:flutter_demo/page/provider_test_page02.dart';

final Map<String, WidgetBuilder> routeTable = {
  RouterPath.PROVDIDER_TEST_PAGE02: (context) => ProviderTestPage02(),
  RouterPath.PROVDIDER_TEST_PAGE01: (context) => ProviderTestPage01()
};

class RouterPath {
  static const String MAIN_PAGE = "/main_page";
  static const String PROVDIDER_TEST_PAGE01 = "/provider_test_page01";
  static const String PROVDIDER_TEST_PAGE02 = "/provider_test_page02";
}
