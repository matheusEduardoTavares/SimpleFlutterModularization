// IN FUTURE, CAN PUT LOGIC TO lazy DEPENDENCY INSTANCES

class AbstractedDependencyType {
  AbstractedDependencyType({
    required this.dependency,
  });

  final dynamic dependency;

  @override
  bool operator ==(covariant AbstractedDependencyType other) {
    if (identical(this, other)) return true;

    return other.dependency == dependency;
  }

  @override
  int get hashCode => dependency.hashCode;
}
