import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/todo_model.dart';
import 'cubit/cubit/todos_cubit.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];
  bool isLoading = true;
  

  @override
  void initState() {
    super.initState();
   
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:BlocProvider(
        create: (context) => TodosCubit(),
        child: BlocConsumer<TodosCubit, TodosState>(
          listener: (context, state) {
            // TODO: implement listener
           if(state is TodosLoading){
          print("Loading");

           } 
          },
          builder: (context, state) {
            return state is TodosLoading ?Center(
               child: CircularProgressIndicator(),
            ) : state is TodosSuccess ? ListView.builder(
            itemCount: context.watch<TodosCubit>().todos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(todos[index].title ?? '--'),
                );
             }
             ): Center(child: Text("Error"),);
          },
        ),
      )
    );
  }
}
 


// getTodosFromApi() async {
  //  todos = await TodoServices().getTodo();
    //setState(() {});
  //}
   //getTodosFromApi();