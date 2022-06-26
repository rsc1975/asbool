/// A simple tool to convert a dart object, including `null`, in
/// a `bool` (`true|false`), quite similar to how works the 
/// double NOT operator `!!` in Javascript and Typescript.
///
/// This lib can be used like a helper method (`asBool(value)`), 
/// like an extension property (`<any>.asBool`) or like an operator (`~~<any>`).
library asbool;

export 'asbool_extension.dart';
export 'src/asbool_operator.dart';

