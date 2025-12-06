import 'dart:developer';

/*
Meaning:
    \x1B: ANSI escape sequence starting marker
    [31m: Escape sequence for red
    [0m: Escape sequence for reset (stop making the text red)

Here are the other colors:
    Black:   \x1B[30m
    Red:     \x1B[31m
    Green:   \x1B[32m
    Yellow:  \x1B[33m
    Blue:    \x1B[34m
    Magenta: \x1B[35m
    Cyan:    \x1B[36m
    White:   \x1B[37m
    Reset:   \x1B[0m
*/

/// A class for logging application events and messages.
/// This does not seem to have the maximum length limit like print() or debugPrint()
///
/// print() or debugPrint(), both are still print to the console in the release mode.
/// [BaseLogger] print to the console only in the debug mode.
///
class BaseLogger {
  /// A tag that helps recognize [BaseLogger] instance
  ///
  /// If [_tag] value is set and every there method [error], [warning], [info] is called, [_tag] value will be show on the console.
  ///
  String _tag = '';

  final List<String> _listLog = <String>[];

  /// Where store log history
  ///
  List<String> get listLog => _listLog;

  /// The flag that helps should enable [BaseLogger] or not.
  ///
  /// If [kDebug] is false. Methods [error], [warning], [info] will be logging nothing.
  ///
  bool kDebug = false;

  /// The flag that check the app is built from example app or not
  ///
  bool isBuildFromExample = false;

  /// Set a tag value
  ///
  void setTag(String tag) {
    if (tag.isNotEmpty) {
      _tag = '[$tag]';
    }
  }

  /// Log the detailed error in the console with red color.
  ///
  void error(String message, [Object? error, StackTrace? trace]) {
    if (kDebug) {
      log('\x1B[31m------------------$_tag ${message.toUpperCase()}------------------>>>>>>\x1B[0m');
      if (error != null) log('\x1B[31mERROR: $error\x1B[0m');
      if (trace != null) log('\x1B[33mTRACE: $trace\x1B[0m');
      log('\x1B[31m<<<<<<--------------------------------------------------------------------\n\n\x1B[0m');
      _listLog.insert(0, message);
    }
  }

  /// Log the detailed warning in the console with yellow color.
  ///
  void warning(String message, [Object? error, StackTrace? trace]) {
    if (kDebug) {
      log('\x1B[33m------------------$_tag ${message.toUpperCase()}------------------>>>>>>\x1B[0m');
      if (error != null) log('\x1B[33mERROR: $error\x1B[0m');
      if (trace != null) log('\x1B[33mTRACE: $trace\x1B[0m');
      log('\x1B[33m<<<<<<--------------------------------------------------------------------\n\n\x1B[0m');
      _listLog.insert(0, message);
    }
  }

  /// Log the detailed info in the console with Green color.
  ///
  void info(String message, [Object? obj]) {
    if (kDebug) {
      String finalMessage = '\x1B[32m$_tag $message\x1B[0m';
      if (obj != null) {
        finalMessage = '\x1B[32m$_tag $message: $obj\x1B[0m';
      }

      log(finalMessage);
      _listLog.insert(0, message);
    }
  }
}
