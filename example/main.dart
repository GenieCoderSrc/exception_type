// example/main.dart

import 'package:exception_type/exception_type.dart';
import 'package:exception_type/failures/auth_failure.dart';
import 'package:exception_type/failures/db_failure.dart';
import 'package:exception_type/constants/auth_failure_messages.dart';
import 'package:exception_type/constants/db_failure_messages.dart';

void main() {
  // Example: Handling Authentication Failure
  AuthFailure authFailure = AuthFailure(AuthFailureType.wrongPassword);
  print("Auth Failure: ${mapAuthFailureToMessage(authFailure.failureType)}");

  // Example: Handling Database Failure
  DbFailure dbFailure = DbFailure(DbFailureType.dataNotFound);
  print("DB Failure: ${mapDbFailureToMessage(dbFailure.failureType)}");

  // Example: General Failure Handling
  IFailure failure = AuthFailure(AuthFailureType.networkRequestFailed);
  print("General Failure: ${mapFailureToMessage(failure)}");
}

String mapAuthFailureToMessage(AuthFailureType failureType) {
  switch (failureType) {
    case AuthFailureType.unknown:
      return AuthFailureMessages.unknown;
    case AuthFailureType.unauthorised:
      return AuthFailureMessages.unauthorised;
    case AuthFailureType.networkRequestFailed:
      return AuthFailureMessages.networkRequestFailed;
    default:
      return AuthFailureMessages.unknown;
  }
}

String mapDbFailureToMessage(DbFailureType failureType) {
  switch (failureType) {
    case DbFailureType.permissionDenied:
      return DbFailureMessages.permissionDenied;
    case DbFailureType.dataNotFound:
      return DbFailureMessages.dataNotFound;
    default:
      return DbFailureMessages.somethingWrong;
  }
}

String mapFailureToMessage(IFailure failure) {
  switch (failure.runtimeType) {
    case AuthFailure:
      return mapAuthFailureToMessage((failure as AuthFailure).failureType);
    case DbFailure:
      return mapDbFailureToMessage((failure as DbFailure).failureType);
    default:
      return "An unexpected error occurred.";
  }
}