import 'package:dio/dio.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'editor': 'api'})
class ApiCollection {
  ApiCollection._();

  factory ApiCollection() {
    return _instance;
  }

  final Dio _dioClient = Dio();

  static final ApiCollection _instance = ApiCollection._();

  @NowaGenerated({'loader': 'api_client_getter'})
  Dio get dioClient {
    return _dioClient;
  }
}
