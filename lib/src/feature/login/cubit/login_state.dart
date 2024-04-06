import 'package:equatable/equatable.dart';
import 'package:login_task_app/core/network/api_status.dart';

class LoginState extends Equatable {
  const LoginState({this.apiStatus, this.message});

  final ApiStatus? apiStatus;
  final String? message;

  LoginState copyWith({ApiStatus? apiStatus, String? message}) {
    return LoginState(
        apiStatus: apiStatus ?? this.apiStatus,
        message: message ?? this.message);
  }

  @override
  List<Object?> get props => [apiStatus, message];
}
