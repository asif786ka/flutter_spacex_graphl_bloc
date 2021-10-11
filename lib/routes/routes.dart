import 'package:flutter/material.dart';
import 'package:flutterspacexlatest/features/home/presentation/pages/home_page.dart';
import 'package:flutterspacexlatest/features/home/presentation/pages/launch_detail_arguments.dart';
import 'package:flutterspacexlatest/features/home/presentation/pages/launch_detail_screen.dart';
import 'package:flutterspacexlatest/routes/route_constants.dart';


class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings setting) => {
        RouteList.initial: (context) => HomePage(),
        RouteList.launchDetail: (context) => LaunchDetailScreen(
              launchDetailArguments: setting.arguments as LaunchDetailArguments,
            ),
      };
}
