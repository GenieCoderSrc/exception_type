import 'package:exception_type/constants/server_error_constants.dart';
import 'package:exception_type/error_msg/map_db_failure_to_message.dart';
import 'package:exception_type/exception_type.dart';
import 'package:flutter/foundation.dart';

String mapFailureToMessage(IFailure failure) {
  debugPrint(
      'MapFailureToMsg | mapFailureToMessage | failure: ${failure.props}');
  switch (failure.runtimeType) {
    case AuthFailure _:
      // Casting to AuthFailure
      AuthFailure authFailure = failure as AuthFailure;
      return mapAuthFailureToMessage(authFailure.failureType);
    case DbFailure _:
      // Casting to DbFailure
      DbFailure dbFailure = failure as DbFailure;
      return mapDbFailureToMessage(dbFailure.failureType);
    case ServerFailure _:
      return ErrorConstants.somethingWentWrong;
    case CacheFailure _:
      return ErrorConstants.CACHE_FAILURE_MESSAGE;
    case FirebaseAuthFailure _:
      return ErrorConstants.wrongUsernamePassword;
    case DynamicLinkError _:
      return ErrorConstants.sangatNotExist;

    default:
      return ErrorConstants.somethingWentWrong;
  }
}
