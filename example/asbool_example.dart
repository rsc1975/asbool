import 'package:asbool/asbool.dart';

class MyClass {
  String? value = '';
}

class MyOtherClass extends MyClass {
  bool get isEmpty => value?.isEmpty ?? false;
}

void main() {
  
  assert(~null == !null.asBool); // true == true
  assert(asBool(null) == ~~0.0); // false == false
  assert(~null == true); // true == true
  assert(~'' == ~null); // true == true
  assert([23].asBool == true); // true == true
  assert(~~[] == false); // false == false
  assert(~~{} == false); // false == false
  assert(~~{'a': 'b'} == true); // true == true
  assert(~~double.nan == 0.asBool); // false == false
  assert(~~{2,4,5} == asBool(double.infinity)); // true == true

  assert(~'Hi' == false); // false == false
  assert('false'.asBool == true); // true == true

  assert(MyClass().asBool == true); // true == true
  assert(MyOtherClass().asBool == false); // false == false (with .isEmpty property)
  assert(asBool(MyOtherClass()..value='Hi') == true); // true == true (with .isEmpty property)

  final things = [123, 'Hi', null, {}, {'a': 'b'}, double.nan, double.infinity, MyClass(), MyOtherClass(), 0, 0.0, ['ok']];
  final trueThings = things.where(asBool).toList();
  print(trueThings); // It will  print [123, 'Hi', {'a': 'b'}, double.infinity, MyClass(), ['ok']]


  print('All asserts OK');

  
}
