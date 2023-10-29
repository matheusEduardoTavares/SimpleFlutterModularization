import 'package:base_modularization_flutter/core/modules/custom_dependencies/abstracted_dependency_type.dart';
import 'package:base_modularization_flutter/core/modules/custom_dependencies/custom_dependencies.dart';
import 'package:base_modularization_flutter/core/modules/global_custom_dependencies/global_custom_dependencies.dart';
import 'package:base_modularization_flutter/core/modules/global_navigator_key/global_navigator_key.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

extension GetDependenciesExtension on BuildContext {
  T read<T>() {
    var currentDependency = _getAssociatedDependencies<CustomDependencies, T>(
      context: this,
    );

    if (currentDependency != null && currentDependency.dependency is T) {
      return currentDependency.dependency;
    }

    currentDependency = _getAssociatedDependencies<GlobalCustomDependencies, T>(
      context: GlobalNavigatorKey.navigator.currentContext!,
    );

    return currentDependency!.dependency as T;
  }

  AbstractedDependencyType?
      _getAssociatedDependencies<C extends CustomDependencies, T>({
    required BuildContext context,
  }) {
    final dependencies = context.dependOnInheritedWidgetOfExactType<C>();

    final currentDependency = dependencies?.binds.firstWhereOrNull(
      (abstractedDependencyType) => abstractedDependencyType.dependency is T,
    );

    return currentDependency;
  }
}
