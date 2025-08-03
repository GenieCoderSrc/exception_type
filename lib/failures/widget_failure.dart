import 'package:exception_type/i_errors/i_failure.dart';

class WidgetFailure extends IFailure {
  final WidgetFailureType dbType;

  const WidgetFailure(this.dbType);

  @override
  List<Object?> get props => [dbType];
}

enum WidgetFailureType { bindingFailure, unKnown }
