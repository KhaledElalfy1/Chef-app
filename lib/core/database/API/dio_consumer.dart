import 'package:chef_app/core/database/API/api_consumer.dart';
import 'package:chef_app/core/database/API/api_interseptor.dart';
import 'package:chef_app/core/database/API/end_points.dart';
import 'package:chef_app/core/errors/error.dart';
import 'package:chef_app/core/errors/error_model.dart';
import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptors()); // for headers
    dio.interceptors.add(LogInterceptor(
      error: true,
      request: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      responseBody: true,
    ));
  }
  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      handelError(e);
    }
  }

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      handelError(e);
    }
  }

  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      handelError(e);
    }
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var result = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return result.data;
    } on DioException catch (e) {
      handelError(e);
    }
  }

  void handelError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      // throw ServerException(eMessage: 'Connection time out');
      case DioExceptionType.sendTimeout:
      // throw ServerException(eMessage: 'Send time out');
      case DioExceptionType.receiveTimeout:
      // throw ServerException(eMessage: 'Receive time out');
      case DioExceptionType.badCertificate:
        // throw ServerException(eMessage: 'bad Certificate');
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400:
            throw BadRequestException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 401:
            UnauthorizedException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 403:
            ForbiddenException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 404:
            NotFoundException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 409:
            throw ConflictException(
                errorModel: ErrorModel.fromJson(e.response!.data));
        }
      case DioExceptionType.cancel:
        throw CancelException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionError:
        throw ConnectionException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      // throw ServerException(eMessage: 'OO0ps Something gone wrong');
    }
  }
}
