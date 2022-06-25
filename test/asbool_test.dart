import 'package:asbool/asbool.dart';
import 'package:test/test.dart';

class A {
  String? value = '';
}

class B extends A {
  bool get isEmpty => value?.isEmpty ?? false;
}

void main() {
  group('asBool tests', () {

    setUp(() {
      // Additional setup goes here.
    });

    test('Testing basic types and collections', () {
      assert(~null == !null.asBool); // true == true
      assert(~~null == false); // false == false
      assert(asBool(null) == ~~null); // false == false
      assert(~'' == ~null); // true == true
      assert([23].asBool == true); // true == true
      assert(~~[] == false); // false == false
      assert(~~{'a': 'b'} == true); // true == true
      assert(asBool({}) == false); // false == false
      
      assert(~~double.nan == 0.asBool); // false == false
      assert(~~{2,4,5} == asBool(double.infinity)); // true == true

      assert(~'Hi' == false); // false == false
      assert('false'.asBool == true); // true == true
    });

    test('Testing custom clases', () {

      final a1 = A();
      final b1 = B();
      final b2 = B()..value = 'OK';

      assert(asBool(a1) == true); // true == true
      assert(asBool(b1) == false); // false == false (with isEmpty method)
      assert(asBool(b2) == true); // true == true
    });

  });
}
