import '../i_errors/i_failure.dart';

class ApiFailure extends IFailure {
  final ApiFailureType apiFailureType;

  const ApiFailure(this.apiFailureType);

  @override
  List<Object> get props => <Object>[apiFailureType];
}

enum ApiFailureType {
  api,
  network,
  database,
  unauthorised,
  sessionDenied,
  permissionDenied,
}
