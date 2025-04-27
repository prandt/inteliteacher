import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';

import 'package:inteliteacher/ui/auth/widgets/finalize_registration_page.dart';
import 'package:inteliteacher/ui/auth/widgets/login_page.dart';
import 'package:inteliteacher/ui/auth/widgets/register_page.dart';
import 'package:inteliteacher/ui/courses/widgets/courses_page.dart';
import 'package:result_dart/result_dart.dart';

import '../ui/class/widgets/class_page.dart';
import '../ui/courses/widgets/view_course_page.dart';
import '../ui/splash/splash_page.dart';
import '../ui/user/widgets/profile_page.dart';
import 'injector.dart';

final _routes = <RouteBase>[
  GoRoute(path: Routes.splash, builder: (context, state) => const SplashPage()),
  GoRoute(path: Routes.login, builder: (context, state) => const LoginPage()),
  GoRoute(
      path: Routes.register, builder: (context, state) => const RegisterPage()),
  GoRoute(
      path: Routes.course,
      builder: (context, state) => const CoursesPage(),
      routes: [
        GoRoute(
            path: Routes.profileRelative,
            builder: (context, state) => const ProfilePage()),
        GoRoute(
            path: '/course/:id',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return ViewCoursePage(id: id);
            },
            routes: [
              GoRoute(
                  path: '/class/:classId',
                  builder: (context, state) {
                    final courseId = state.pathParameters['id']!;
                    final classId = state.pathParameters['classId']!;
                    return ClassPage(courseId: courseId, classId: classId);
                  })
            ])
      ],
      redirect: guard),
  GoRoute(
      path: Routes.finalizeRegistration,
      builder: (context, state) => const FinalizeRegistrationPage(),
      redirect: guard),
];

final router = GoRouter(
    initialLocation: Routes.splash, routes: _routes, debugLogDiagnostics: true);

abstract final class Routes {
  // Splash and auth routes
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';

  // Home and sub-routes
  static const course = '/';
  static const profile = '/$profileRelative';
  static const profileRelative = 'profile';
  static String courseWithId(String id) => '/course/$id';
  static String classWithId(String courseId, String classId) =>
      '/course/$courseId/class/$classId';

  // Finalize registration
  static const finalizeRegistration = '/finalize-registration';
}

Future<String?> guard(BuildContext context, GoRouterState state) async {
  final authRepository = injector.get<AuthRepository>();

  final loggedValue = (await authRepository.isSignedIn()).getOrNull();
  final hasCompletedRegistration =
      await (authRepository.hasCompletedRegistration()).getOrNull();

  if (loggedValue == true && hasCompletedRegistration == true) {
    return null;
  }

  if (loggedValue == true && hasCompletedRegistration == false) {
    return Routes.finalizeRegistration;
  }

  return Routes.login;
}
