import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'get_config.config.dart';

@InjectableInit(initializerName: r'$initFlutterStorageGetIt')
void configureFlutterStorageModule(
    GetIt getIt,
    String? environment,
    EnvironmentFilter? environmentFilter,
    ) =>
    getIt.$initFlutterStorageGetIt(
        environment: environment, environmentFilter: environmentFilter);