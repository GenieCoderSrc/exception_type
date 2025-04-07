import '../i_errors/i_failure.dart';

class DynamicLinkError extends IFailure {
  final DynamicLinkErrorType locationErrorType;

  const DynamicLinkError(this.locationErrorType);

  @override
  List<Object> get props => <Object>[locationErrorType];
}

enum DynamicLinkErrorType {
  permissionDenied,
  permissionDeniedForever,
  urlNotFound,
  elementNotExist,
}
