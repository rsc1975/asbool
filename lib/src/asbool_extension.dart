import 'package:asbool/src/asbool_base.dart';

/// Extension to add the property `.asBool` to everything in dart
extension WhateverToBoolExtension on dynamic {
  /// Property that converts the current object to a `bool` instance
  bool get asBool => BoolHelper.convertToBool(this);
}
