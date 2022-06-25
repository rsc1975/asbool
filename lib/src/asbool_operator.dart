
import 'package:asbool/src/asbool_base.dart';

extension WhateverToBoolOperator on dynamic {

  bool operator ~() {
    return !asBool(this);
  }
}

