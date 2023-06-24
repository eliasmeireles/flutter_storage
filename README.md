# Flutter storage

- [Flutter version 3.3.8](https://docs.flutter.dev/development/tools/sdk/releases?tab=linux)
-

## Getting Started

- Add submodule

```shell
git submodule add https://github.com/eliasmeireles/flutter_storage.git  submodules/flutter_storage
```

- Add dependency

```yaml
flutter_storage:
  path: ./submodules/flutter_storage
```


```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:websocket_app/app/app.dart';

import 'dependecies/get_config.dart';

class EnvironmentConfig {
  static const targetBuild = String.fromEnvironment(
    'targetBuild',
    defaultValue: Env.dev,
  );
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) async {
    await Hive.initFlutter();
    configureDependencies(EnvironmentConfig.targetBuild);
    runApp(const AppWidget());
  });
}
```