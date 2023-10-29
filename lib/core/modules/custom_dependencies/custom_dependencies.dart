import 'package:base_modularization_flutter/core/modules/custom_dependencies/abstracted_dependency_type.dart';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

class CustomDependencies extends InheritedWidget {
  const CustomDependencies({
    required this.binds,
    required Widget child,
    Key? key,
  })  : _deepCollectionEquality = const DeepCollectionEquality(),
        super(
          child: child,
          key: key,
        );

  final List<AbstractedDependencyType> binds;
  final DeepCollectionEquality _deepCollectionEquality;

  @override
  bool updateShouldNotify(covariant CustomDependencies oldWidget) {
    return child != oldWidget.child ||
        !_deepCollectionEquality.equals(binds, oldWidget.binds);
  }
}
