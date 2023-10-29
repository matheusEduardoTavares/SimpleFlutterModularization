import 'package:base_modularization_flutter/core/modules/custom_dependencies/custom_dependencies.dart';
import 'package:flutter/material.dart';

class GlobalCustomDependencies extends CustomDependencies {
  const GlobalCustomDependencies({
    required super.binds,
    required super.child,
    Key? key,
  }) : super(key: key);
}
