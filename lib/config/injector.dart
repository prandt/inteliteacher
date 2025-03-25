import 'package:get_it/get_it.dart';
import 'package:inteliteacher/ui/home/view_models/home_viewmodel.dart';

/// Abstract class to be implemented by the injector
abstract class Injector {
  T get<T extends Object>();
  void registerSingleton<T extends Object>(T instance);
}

/// Implementation of the injector
class InjectorImpl implements Injector {
  final getIt = GetIt.instance;

  @override
  T get<T extends Object>() {
    return getIt.get<T>();
  }

  @override
  void registerSingleton<T extends Object>(T instance) {
    getIt.registerSingleton<T>(instance);
  }
}

/// Global instance of the injector
final Injector injector = InjectorImpl();

/// Setup the dependencies
void setupDependencies() {
  injector.registerSingleton(HomeViewModel());
}