import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:traveler/setup.config.dart';

final getIt = GetIt.instance;
T locateService<T extends Object>() => getIt.get<T>();
@injectableInit
void configureDependencies() => $initGetIt(getIt);
