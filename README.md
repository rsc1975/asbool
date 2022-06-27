[![Pub Version](https://img.shields.io/pub/v/asbool)](https://pub.dev/packages/asbool)
[![codecov](https://codecov.io/gh/rsc1975/asbool/branch/main/graph/badge.svg?token=IHB0J0OOPQ)](https://codecov.io/gh/rsc1975/asbool)
[![Code size](https://img.shields.io/github/languages/code-size/rsc1975/asbool?logo=github&logoColor=white)](https://github.com/rsc1975/asbool)
[![License](https://img.shields.io/github/license/rsc1975/asbool?logo=open-source-initiative&logoColor=green)](https://github.com/rsc1975/asbool/blob/master/LICENSE)
[![Null Safety](https://img.shields.io/badge/null-safety-brightgreen?logo=dart&logoColor=lightblue)](https://dart.dev/null-safety)
[![API Doc](https://img.shields.io/badge/docs-Dart%20apidoc-blue?logo=dart&logoColor=lightblue)](https://pub.dev/documentation/asbool/latest/)


A simple tool (really simple, about 25 lines of code) to convert a dart object, including `null`, in a `bool` (`true|false`), quite similar to how the double NOT operator (`!!`) works in Javascript and Typescript.

## Features

You can use it as an operator (`~` or twice `~~`), as an extension (property `.asBool`) or as a simple helper method (`asBool(value)`).

> **Warning**
> The operator `~` doesn't work with `int` values because is used for [bit-wise negate operator](https://api.flutter.dev/flutter/dart-core/int/operator_bitwise_negate.html), for `int` objects use the extension or helper method

What values are converted to `false`:

* `null` 
* `0` And `0.0`
* `double.nan` "Not a Number" values
* `""` Empty Strings
* `[]` Empty iterable objects
* `<any>.isEmpty == true` Whatever object with a `isEmpty` property that returns `true` (i.e, a `Map` or any custom class that implement `isEmpty`)

All other values are considered as `true`.

## Getting started

Add the package `asbool` to your project:

```bash
dart pub add asbool
```

Import the package:

```dart
import 'package:asbool/asbool.dart'; // All included
```


## Usage

Use the tool as you wish

```dart
final foo = 'Hi';
final bar = [];
final m = {'a':'b'};

assert(~~foo == foo.asBool); // true == true
assert(asBool(foo) == ~~12); // true == true

assert(asBool(bar) == bar.asBool); // false == false
assert(asBool(0.0) == ~~double.nan); // false == false
assert(~~m == true); // true == true
assert(asBool({}) == false); // false == false

final things = [123, 'Hi', null, {}, {'a': 'b'}, double.nan, double.infinity, MyClass(), MyOtherClass(), 0, 0.0, ['ok']];
final trueThings = things.where(asBool).toList();
print(trueThings); // It will print: [123, 'Hi', {'a': 'b'}, double.infinity, MyClass(), ['ok']]


```

## Additional information

If you have any suggestion or problem with the lib, please open an issue and I'll try to help.

