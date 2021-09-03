import 'package:flutter/cupertino.dart';
import 'package:flutter_exercise_mvc/models/todo_model.dart';

class TodoController {
  TextEditingController textTodo = TextEditingController();
  List<ToDo> todos = [];

  void addTodo() {
    ToDo todo = ToDo(text: textTodo.text);

    todos.add(todo);

    textTodo.clear();
  }

  void deleteTodo(int index) {
    todos.removeAt(index);
  }

  void changeStatus(int index, bool status) {
    todos[index].done = status;
  }
}