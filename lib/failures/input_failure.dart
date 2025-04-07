import 'package:exception_type/i_errors/i_failure.dart';

class InputFailure extends IFailure {
  final InputFailureType dbType;

  const InputFailure(this.dbType);

  @override
  List<Object?> get props => [dbType];
}

enum InputFailureType {
  invalidInput,
  requiredDataNotFound,
  dataParsingFailure,
  referenceNotExist,
  somethingWrong,
}
