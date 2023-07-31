import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../models/todo_model.dart';
import '../../../../services/todo_services.dart';
part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  TodosCubit() : super(TodosInitial()){
  getTodos();
  }
List<Todo> todos =[];

getTodos(){

  getTodosFromApi()async { 

try{emit(TodosLoading());
todos=await TodoServices().getTodo();
emit(TodosSuccess());
}catch(e){
  print(e.toString());
  emit(TodosError());
}

}





}
}