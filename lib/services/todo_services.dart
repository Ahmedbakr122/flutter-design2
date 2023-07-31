import 'package:dio/dio.dart';

import '../models/todo_model.dart';

class TodoServices {
String url = "https://jsonplaceholder.typicode.com/todos";

Future<List<Todo>> getTodo() async {
 List<Todo> todos =[];
Response response = await Dio().get(url);
var data = response.data;
data.forEach((element){
  Todo todo=Todo.fromJson(element);
  todos.add(todo);
 });
 
  return todos;
}
}
