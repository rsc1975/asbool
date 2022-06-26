
import 'package:asbool/src/asbool_base.dart';

/// Extension to add the operator `~` to everything in dart except `int` objects
extension WhateverToBoolOperator on dynamic {

  /// Operator that converts the current object to a negate `bool` instance
  /// You can use it twice (`~~myValue`) to get the actual `bool` value of the current object
  bool operator ~() => !asBool(this);
}

