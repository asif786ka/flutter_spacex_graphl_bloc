import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterspacexlatest/routes/route_constants.dart';
import 'package:flutterspacexlatest/routes/routes.dart';
import 'package:injectable/injectable.dart';
import 'animation/fade_page_route_builder.dart';
import 'core/injection/injection.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/home/presentation/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);
  runApp(RMApp());
}

class RMApp extends StatefulWidget {
  const RMApp({Key? key}) : super(key: key);

  @override
  _RMAppState createState() => _RMAppState();
}

class _RMAppState extends State<RMApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      home: BlocProvider<HomeBloc>(
        create: (_) => getIt(),
        child: HomePage(),
      ),
      initialRoute: RouteList.initial,
      onGenerateRoute: (RouteSettings settings) {
        final routes = Routes.getRoutes(settings);
        final WidgetBuilder? builder = routes[settings.name];
        return FadePageRouteBuilder(
          builder: builder!,
          settings: settings,
        );
      },
    );
  }
}
