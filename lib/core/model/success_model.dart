class SuccessModel {
  final String message;

  SuccessModel({required this.message});

  factory SuccessModel.fromJson(Map<String, dynamic> jsonData) {
    return SuccessModel(message: jsonData['message']);
  }
}
