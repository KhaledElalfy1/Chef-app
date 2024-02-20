class ErrorModel {
  final int statusCode;
  final String eMessage;

  ErrorModel({required this.statusCode, required this.eMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      statusCode: jsonData['status'],
      eMessage: jsonData['ErrorMessage'],
    );
  }
}
