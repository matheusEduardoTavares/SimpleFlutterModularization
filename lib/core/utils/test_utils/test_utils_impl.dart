/// EXAMPLE
import 'dart:math';

import 'package:base_modularization_flutter/core/utils/test_utils/test_utils.dart';

final class TestUtilsImpl implements TestUtils {
  @override
  String getRandomNumber() => Random().nextDouble().toString();
}
