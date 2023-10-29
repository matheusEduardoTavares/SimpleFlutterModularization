import 'package:base_modularization_flutter/core/modules/custom_dependencies/abstracted_dependency_type.dart';
import 'package:base_modularization_flutter/core/modules/global_custom_dependencies/global_custom_dependencies.dart';
import 'package:base_modularization_flutter/core/modules/global_navigator_key/global_navigator_key.dart';
import 'package:base_modularization_flutter/core/utils/test_utils/test_utils_impl.dart';
import 'package:base_modularization_flutter/modules/app_module/core/app_module.dart';
import 'package:base_modularization_flutter/modules/home_module/core/home_module.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalCustomDependencies(
      binds: [
        AbstractedDependencyType(
          dependency: TestUtilsImpl(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: GlobalNavigatorKey.navigator,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: AppModule.initialRoute,
        routes: {
          ...AppModule().routers,
          ...HomeModule().routers,
        },
      ),
    );
  }
}
