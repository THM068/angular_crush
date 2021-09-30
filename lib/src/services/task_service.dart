import 'dart:async';

import 'package:angular_crush/src/model/task.dart';
import 'package:dio/dio.dart';


class TaskService  {
  final String _apiUrl = "http://localhost:3000/tasks";
  Dio _dio;

  TaskService(this._dio);

  Future<List<Task>> getTasks()  async {
    Response<List<dynamic>> response = await _dio.get(_apiUrl);
    if(response.statusCode == 200) {
      var data = response.data;
      if(data == null) {
        return [];
      }
      return data.map((e) =>
           Task.fromJson(e)
      ).toList();
    }
    return [];
  }

  Future<Task> deleteTask(Task task) async {
    String path = "${_apiUrl}/${task.id}";
    Response response = await _dio.delete(path);
    var data = response.data;

    if(response.statusCode == 200) {
      return task;
    }
    throw Exception("Task does not exist");

  }

}