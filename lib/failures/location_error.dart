import '../i_errors/i_failure.dart';

class LocationError extends IFailure {
  final LocationErrorType locationErrorType;

  const LocationError(this.locationErrorType);

  @override
  List<Object> get props => <Object>[locationErrorType];
}

enum LocationErrorType {
  permissionDenied,
  permissionDeniedForever,
}
