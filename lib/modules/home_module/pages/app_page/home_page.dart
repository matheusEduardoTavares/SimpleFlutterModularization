import 'package:base_modularization_flutter/core/modules/extensions/get_dependencies_extension.dart';
import 'package:base_modularization_flutter/modules/home_module/helpers/app_module_helper/home_module_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.read<HomeModuleHelper>().getPageTitle(),
        ),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
