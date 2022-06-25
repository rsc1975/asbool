
import 'package:asbool/src/asbool_base.dart';

extension WhateverToBoolExtension on dynamic {

  bool get asBool => BoolHelper.convertToBool(this);
}

