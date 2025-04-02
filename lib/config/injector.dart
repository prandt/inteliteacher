import 'package:get_it/get_it.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/ui/auth/view_models/login_viewmodel.dart';
import 'package:inteliteacher/ui/home/view_models/home_viewmodel.dart';
import 'package:inteliteacher/ui/user/view_models/profile_viewmodel.dart';

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
    getIt.registerSingleton(HomeViewModel());
    getIt.registerSingleton<AuthRepository>(AuthRepositoryRemote());
    getIt.registerSingleton(LoginViewModel(get()));
    getIt.registerSingleton(ProfileViewmodel(get()));
  }
}

/// Global instance of the injector
final Injector injector = InjectorImpl();
