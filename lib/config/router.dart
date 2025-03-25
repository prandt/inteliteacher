import 'package:go_router/go_router.dart';

import '../ui/home/widgets/home_page.dart';
import '../ui/user/widgets/profile_page.dart';
import 'injector.dart';

final router = GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
          path: Routes.home,
          builder: (context, state) => HomePage(viewModel: injector.get())),
      GoRoute(path: Routes.profile, builder: (context, state) => ProfilePage()),
    ],
    debugLogDiagnostics: true);

abstract final class Routes {
  static const home = '/';
  static const classPlans = '/class-plans';
  static const profile = '/profile';
}
