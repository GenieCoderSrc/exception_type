import 'package:exception_type/i_errors/i_failure.dart';

class DbFailure extends IFailure {
  final DbFailureType failureType;

  const DbFailure(this.failureType);

  @override
  List<Object?> get props => [failureType];
}

enum DbFailureType {
  permissionDenied,
  dataParsingFailure,
  referenceNotExist,
  dataNotFound,
  somethingWrong,
  connectionTimeout, // New value
  operationCancelled, // New value
  invalidQuery, // New value
}
