import 'package:exception_type/constants/db_failure_messages.dart';
import 'package:exception_type/failures/db_failure.dart';

String mapDbFailureToMessage(DbFailureType failureType) {
  switch (failureType) {
    case DbFailureType.permissionDenied:
      return DbFailureMessages.permissionDenied;
    case DbFailureType.dataParsingFailure:
      return DbFailureMessages.dataParsingFailure;
    case DbFailureType.referenceNotExist:
      return DbFailureMessages.referenceNotExist;
    case DbFailureType.dataNotFound:
      return DbFailureMessages.dataNotFound;
    case DbFailureType.somethingWrong:
      return DbFailureMessages.somethingWrong;
    case DbFailureType.connectionTimeout:
      return DbFailureMessages.connectionTimeout;
    case DbFailureType.operationCancelled:
      return DbFailureMessages.operationCancelled;
    case DbFailureType.invalidQuery:
      return DbFailureMessages.invalidQuery;
    case DbFailureType.invalidData:
      return DbFailureMessages.invalidData;
  }
}
