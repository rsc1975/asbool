import 'package:asbool/asbool_extension.dart';

class MyClass {
  String? value = '';
}

class MyOtherClass extends MyClass {
  bool get isEmpty => value?.isEmpty ?? false;
}

void main() {
  
  assert(asBool(null) == asBool(0.0)); // false == false
  assert(asBool([23]) == true); // true == true
  assert({2,4,5}.asBool == double.infinity.asBool); // true == true

  assert(MyOtherClass().asBool == false); // true == true (with .isEmpty property)
  assert(asBool(MyOtherClass()..value='Hi') == true); // true == true (with .isEmpty property)

  print('All asserts OK');
  
}
