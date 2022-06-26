/// Helper calls with a single method to convert a `dynamic`object to a `bool`
class BoolHelper {

  /// Method to convert anything to a `bool`
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

/// Public helper method for friendly use of the original `BoolHelper.convertToBool`
const asBool = BoolHelper.convertToBool;
