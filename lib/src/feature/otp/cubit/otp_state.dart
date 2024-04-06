import 'package:equatable/equatable.dart';
import 'package:login_task_app/core/network/api_status.dart';

class OtpState extends Equatable {
  const OtpState({this.apiStatus, this.message});

  final ApiStatus? apiStatus;
  final String? message;

  OtpState copyWith({ApiStatus? apiStatus, String? message}) {
    return OtpState(
        apiStatus: apiStatus ?? this.apiStatus,
        message: message ?? this.message);
  }

  @override
  List<Object?> get props => [apiStatus, message];
}
