import 'package:base_modularization_flutter/core/modules/base_module/base_module.dart';
import 'package:base_modularization_flutter/core/modules/custom_dependencies/abstracted_dependency_type.dart';
import 'package:base_modularization_flutter/modules/home_module/constants/home_module_constants.dart';
import 'package:base_modularization_flutter/modules/home_module/helpers/app_module_helper/home_module_helper_impl.dart';
import 'package:base_modularization_flutter/modules/home_module/pages/app_page/home_page.dart';

final class HomeModule extends BaseModule {
  HomeModule()
      : super(
          moduleName: HomeModuleConstants.moduleName,
          routers: {
            HomeModuleConstants.homePage: const HomePage(),
          },
          binds: [
            AbstractedDependencyType(
              dependency: HomeModuleHelperImpl(),
            ),
          ],
        );
}
