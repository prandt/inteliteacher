import 'package:get_it/get_it.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository.dart';
import 'package:inteliteacher/data/repositories/ai/ai_repository_remote.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/data/repositories/class/class_repository.dart';
import 'package:inteliteacher/data/repositories/class/class_repository_remote.dart';
import 'package:inteliteacher/data/repositories/course/course_repository.dart';
import 'package:inteliteacher/data/repositories/course/course_repository_remote.dart';
import 'package:inteliteacher/ui/auth/view_models/finalize_registration_viewmodel.dart';
import 'package:inteliteacher/ui/auth/view_models/login_viewmodel.dart';
import 'package:inteliteacher/ui/auth/view_models/logout_viewmodel.dart';
import 'package:inteliteacher/ui/auth/view_models/register_viewmodel.dart';
import 'package:inteliteacher/ui/class/view_models/class_viewmodel.dart';
import 'package:inteliteacher/ui/class_plans/view_models/class_plans_viewmodel.dart';
import 'package:inteliteacher/ui/courses/view_models/course_page_viewmodel.dart';
import 'package:inteliteacher/ui/courses/view_models/courses_viewmodel.dart';
import 'package:inteliteacher/ui/user/view_models/profile_viewmodel.dart';

import '../data/repositories/class_plans/class_plans_repository.dart';
import '../data/repositories/class_plans/class_plans_repository_remote.dart';

/// Abstract class to be implemented by the injector
abstract class Injector {
  T get<T extends Object>();
  void setupDependencies();
}

/// Implementation of the injector
class InjectorImpl implements Injector {
  final getIt = GetIt.instance;

  @override
  T get<T extends Object>() {
    return getIt.get<T>();
  }

  @override
  void setupDependencies() {
    // Repositories
    // Registering repositories as singletons to ensure a single instance is used throughout the app
    getIt.registerSingleton<AuthRepository>(AuthRepositoryRemote());
    getIt.registerSingleton<AiRepository>(AiRepositoryRemote());
    getIt.registerSingleton<ClassPlansRepository>(ClassPlansRepositoryRemote());
    getIt.registerSingleton<CourseRepository>(CourseRepositoryRemote());
    getIt.registerSingleton<ClassRepository>(ClassRepositoryRemote());

    // ViewModels
    // Registering view models as factories to ensure a new instance is created each time
    getIt.registerFactory(() => LoginViewModel(get()));
    getIt.registerFactory(() => ProfileViewmodel(get()));
    getIt.registerFactory(() => LogoutViewmodel(get()));
    getIt.registerFactory(() => RegisterViewModel(get()));
    getIt.registerFactory(() => FinalizeRegistrationViewmodel(get()));
    getIt.registerSingleton(ClassPlansViewmodel(get(), get()));
    getIt.registerSingleton(CoursesViewmodel(get()));
    getIt.registerFactory(() => CoursePageViewmodel(get(), get()));
    getIt.registerFactory(() => ClassViewmodel(get()));
  }
}

/// Global instance of the injector
final Injector injector = InjectorImpl();
