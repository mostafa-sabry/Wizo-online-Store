class ErrorModel {
  final bool status;
  final String message;
  final String? data;

  ErrorModel({required this.status, required this.message, this.data});

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData['status'],
      message: jsonData['message'],
      data: jsonData['data'],
    );
  }
}
