/// A simple tool to convert a dart object, including `null`, in
/// a `bool` (`true|false`), quite similar to how works the 
/// double NOT operator `!!` in Javascript and Typescript.
///
/// This lib can be used like a helper method (`asBool(value)`) or like an extension (`<any>.asBool`).
library asbool.extension;

export 'asbool_helper.dart';
export 'src/asbool_extension.dart';
