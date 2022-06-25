class BoolHelper {
  static bool convertToBool(value) {
    if (value == null) {
      return false;
    }
    if (value is bool) {
      return value;
    }
    if ((value is String ||
            value is Iterable ||
            value is Map) &&
        value.isEmpty) {
      return false;
    }
    if (value is double && value.isNaN) {
      return false;
    }
    if (value is num && value.isFinite && value.toInt() == 0) {
      return false;
    }
    try {
      return !value.isEmpty;
    } catch (errorOnIsEmpty) {
      // Enpty on purpose
    }

    return true;
  }
}

const asBool = BoolHelper.convertToBool;
