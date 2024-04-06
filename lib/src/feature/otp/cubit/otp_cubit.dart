import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_task_app/core/network/api_status.dart';

import '../../../../core/network/model/api_responce_model.dart';
import '../../login/repository/login_repository.dart';
import 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpState());

  LoginRepository loginRepository = LoginRepository();

  otpVerification(Map<String, String> mapdata) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));

    try {
      final Either<String, ApiResponceModel> result =
          await loginRepository.otpVerification(mapdata);

      result.fold(
          (l) => emit(state.copyWith(apiStatus: ApiStatus.failer, message: l)),
          (r) {
        emit(state.copyWith(apiStatus: ApiStatus.success));
      });
    } catch (e) {
      emit(state.copyWith(apiStatus: ApiStatus.failer, message: e.toString()));
    }
  }
}
