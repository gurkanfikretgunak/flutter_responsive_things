import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../model/task.dart';

part 'client_api.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/tasks")
  Future<List<Task>> getTasks();
}
