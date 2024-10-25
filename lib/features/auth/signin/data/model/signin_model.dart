class ErrorSigninModel {
  bool? status;
  String? message;
  dynamic data;

  ErrorSigninModel({this.status, this.message, this.data});

  factory ErrorSigninModel.fromJson(Map<String, dynamic> json) =>
      ErrorSigninModel(
        status: json['status'] as bool?,
        message: json['message'] as String?,
        data: json['data'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data,
      };
}
