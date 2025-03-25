import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/ui/auth/widgets/login_page.dart';
import 'package:inteliteacher/ui/auth/widgets/register_page.dart';

import '../ui/home/widgets/home_page.dart';
import '../ui/splash/splash_page.dart';
import '../ui/user/widgets/profile_page.dart';
import 'injector.dart';

final _routes = <RouteBase>[
  GoRoute(path: Routes.splash, builder: (context, state) => SplashPage()),
  GoRoute(path: Routes.login, builder: (context, state) => LoginPage()),
  GoRoute(path: Routes.register, builder: (context, state) => RegisterPage()),
  GoRoute(
      path: Routes.home,
      builder: (context, state) => HomePage(viewModel: injector.get()),
      redirect: guard),
  GoRoute(
      path: Routes.profile,
      builder: (context, state) => ProfilePage(),
      redirect: guard),
];

final router = GoRouter(
    initialLocation: Routes.splash, routes: _routes, debugLogDiagnostics: true);

abstract final class Routes {
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const home = '/';
  static const classPlans = '/class-plans';
  static const profile = '/profile';
}

Future<String?> guard(BuildContext context, GoRouterState state) async {
  final actualRoute = state.matchedLocation;
  final isLoggedIn = await injector.get<AuthRepository>().isSignedIn();
  if (actualRoute != Routes.login && !isLoggedIn) {
    return Routes.login;
  }
  return null;
}
