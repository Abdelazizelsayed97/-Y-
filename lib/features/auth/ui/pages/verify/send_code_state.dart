part of '../../pages/verify/send_code_cubit.dart';

@immutable
abstract class SendCodeState {}

class SendCodeInitial extends SendCodeState {

}

class SendCodeLoading extends SendCodeState {
  @override
  List<Object> get props => [];
}

class SendCodeSuccess extends SendCodeState {
  @override
  List<Object> get props => [];
}

class SendCodeFailure extends SendCodeState {
  final String message;

  SendCodeFailure(this.message);

  @override
  List<Object> get props => [message];
}
// ================================================================
class VerifyInitial extends SendCodeState {}

class VerifyLoading extends SendCodeState {
  @override
  List<Object> get props => [];
}

class VerifySuccess extends SendCodeState {
  @override
  List<Object> get props => [];
}

class VerifyFailure extends SendCodeState {
  final String message;

  VerifyFailure(this.message);

  @override
  List<Object> get props => [message];
}
// ================================================================
class ResetInitial extends SendCodeState {}

class ResetLoading extends SendCodeState {
  @override
  List<Object> get props => [];
}

class ResetSuccess extends SendCodeState {
  @override
  List<Object> get props => [];
}

class ResetFailure extends SendCodeState {
  final String message;

  ResetFailure(this.message);

  @override
  List<Object> get props => [message];
}
