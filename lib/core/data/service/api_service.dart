import 'package:dio/dio.dart';
import 'package:flutter_responsive_screens/core/data/api/client_api.dart';
import 'package:logger/logger.dart';

class ApiService {
  final dio = Dio();
  final logger = Logger();

  getMyTaskList() {
    dio.options.headers["Demo-Header"] = "demo header";
    final client = ApiClient(dio);

    client.getTasks().then((value) => logger.i(value.length));
  }
}
