import 'package:base_modularization_flutter/core/modules/extensions/get_dependencies_extension.dart';
import 'package:base_modularization_flutter/core/utils/test_utils/test_utils.dart';
import 'package:base_modularization_flutter/modules/app_module/helpers/app_module_helper/app_module_helper.dart';
import 'package:base_modularization_flutter/modules/home_module/constants/home_module_constants.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({required AppModuleHelper appModuleHelper, super.key})
      : _appModuleHelper = appModuleHelper;

  final AppModuleHelper _appModuleHelper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appModuleHelper.getPageTitle(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              HomeModuleConstants.getPageName(
                page: HomeModuleConstants.homePage,
              ),
            );
          },
          child: const Text('Go to Home'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          'Random Number: ${context.read<TestUtils>().getRandomNumber()}',
        ),
      ),
    );
  }
}
