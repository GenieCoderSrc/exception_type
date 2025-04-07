import 'package:exception_type/i_errors/i_failure.dart';

class FireStoreDbFailure extends IFailure {
  final FireStoreDbFailureType dbType;

  const FireStoreDbFailure(this.dbType);

  @override
  List<Object?> get props => [dbType];
}

enum FireStoreDbFailureType {
  permissionDenied,
  dataParsingFailure,
  noInternet,
  somethingWrong,
  userNotFound,
  idNotFound,
  dataNotExist,
  noReferenceFound,
}
