import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:login_task_app/core/network/dio_network_service.dart';

import '../../../../core/network/model/api_responce_model.dart';

class LoginRepository {
  Future<Either<String, ApiResponceModel>> login(
      Map<String, String> mapdata) async {
    try {
      final responce = await DioNetworkService.instance.post("appApi/api",
          data: mapdata,
          options: Options(headers: {
            'key': '6997c339387ac79b5fec7676cd6170b0d8b1e79c',
            'Content-Type': 'application/json'
          }));

      final data = ApiResponceModel.fromJson(responce.data);
      if (data.response?.respCode == '200') {
        return Right(data);
      } else {
        return Left(data.response?.msg ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Either<String, ApiResponceModel>> otpVerification(
      Map<String, String> mapdata) async {
    try {
      final responce = await DioNetworkService.instance.post("appApi/api",
          data: mapdata,
          options: Options(headers: {
            'key': '98acf1f2384fbc080fad8bc30589fed1aa9ef448',
            'Content-Type': 'application/json'
          }));

      final data = ApiResponceModel.fromJson(responce.data);
      if (data.response?.respCode == '200') {
        return Right(data);
      } else {
        return Left(data.response?.msg ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }
}

class ErrorHandler {
  static void handleError(String code) {}
}
