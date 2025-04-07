import 'package:exception_type/i_errors/i_failure.dart';

class FireStorageFailure extends IFailure {
  final FireStorageFailureType dbType;

  const FireStorageFailure(this.dbType);

  @override
  List<Object?> get props => [dbType];
}

enum FireStorageFailureType {
  permissionDenied,
  dataParsingFailure,
  noInternet,
  somethingWrong,
  userNotFound,
  idNotFound,
  dataNotExist,
  referenceNotFound,
  noReferenceFound,
}
