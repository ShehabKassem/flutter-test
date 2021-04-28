import 'package:iti/model/todo_model.dart';
import 'package:dio/dio.dart';

class TodosService {
  String API_URL = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> getTodos() async {
    var todos = <Todo>[];
    var response = await Dio().get(API_URL);
    var data = response.data;

    data.forEach((value) {
      todos.add(Todo.fromJson(value));
    });
    return todos;
  }
}
