import 'package:equatable/equatable.dart';

abstract class IFailure extends Equatable implements Exception {
  const IFailure();

  @override
  String toString() => '$runtimeType Exception';
}

// const IFailure({
//   required this.plugin,
//   this.message,
//   this.code = 'unknown',
//   this.stackTrace,
// });

// /// The plugin the exception is for.
// ///
// /// The value will be used to prefix the message to give more context about
// /// the exception.
// final String plugin;
//
// /// The long form message of the exception.
// final String? message;
//
// /// The optional code to accommodate the message.
// ///
// /// Allows users to identify the exception from a short code-name, for example
// /// "no-app" is used when a user attempts to read a [FirebaseApp] which does
// /// not exist.
// final String code;
//
// /// The stack trace which provides information to the user about the call
// /// sequence that triggered an exception
// final StackTrace? stackTrace;

// @override
// List<Object?> get props => <Object?>[plugin, message, code, stackTrace];
//

// @override
// String toString() {
//   String output = '[$plugin/$code] $message';
//
//   if (stackTrace != null) {
//     output += '\n\n${stackTrace.toString()}';
//   }
//
//   return output;
// }
