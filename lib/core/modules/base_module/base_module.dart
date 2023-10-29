import 'package:base_modularization_flutter/core/modules/custom_dependencies/abstracted_dependency_type.dart';
import 'package:base_modularization_flutter/core/modules/custom_dependencies/custom_dependencies.dart';
import 'package:flutter/material.dart';

base class BaseModule {
  BaseModule({
    required String moduleName,
    required Map<String, Widget> routers,
    List<AbstractedDependencyType>? binds,
  })  : _binds = binds,
        _routers = routers,
        _moduleName = moduleName;

  final List<AbstractedDependencyType>? _binds;
  final Map<String, Widget> _routers;
  final String _moduleName;

  Map<String, WidgetBuilder> get routers {
    return _routers.map(
      (key, widget) => MapEntry(
        '$_moduleName$key',
        (_) => _binds != null
            ? CustomDependencies(
                binds: _binds!,
                child: widget,
              )
            : widget,
      ),
    );
  }
}
