class ApiResponceModel {
  Response? response;

  ApiResponceModel({this.response});

  ApiResponceModel.fromJson(Map<String, dynamic> json) {
    response =
        json['response'] != null ? Response.fromJson(json['response']) : null;
  }
}

class Response {
  String? respCode;
  String? msg;
  Data? data;

  Response({this.respCode, this.msg, this.data});

  Response.fromJson(Map<String, dynamic> json) {
    respCode = json['resp_code'];
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  int? otp;
  String? mobileNo;

  Data({this.otp, this.mobileNo});

  Data.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
    mobileNo = json['mobile_no'];
  }
}
