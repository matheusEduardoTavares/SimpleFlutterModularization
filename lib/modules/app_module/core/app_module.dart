import 'package:base_modularization_flutter/core/modules/base_module/base_module.dart';
import 'package:base_modularization_flutter/core/modules/custom_dependencies/abstracted_dependency_type.dart';
import 'package:base_modularization_flutter/modules/app_module/constants/app_module_constants.dart';
import 'package:base_modularization_flutter/modules/app_module/helpers/app_module_helper/app_module_helper_impl.dart';
import 'package:base_modularization_flutter/modules/app_module/pages/app_page/app_page.dart';

final class AppModule extends BaseModule {
  static const initialRoute =
      '${AppModuleConstants.moduleName}${AppModuleConstants.appPage}';

  AppModule()
      : super(
          moduleName: AppModuleConstants.moduleName,
          routers: {
            AppModuleConstants.appPage: const AppPage(),
          },
          binds: [
            AbstractedDependencyType(
              dependency: AppModuleHelperImpl(),
            ),
          ],
        );
}
