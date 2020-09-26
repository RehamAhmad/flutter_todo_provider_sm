// import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_todo_provider_sm/todo_model.dart';

class TodoProvider extends ChangeNotifier {
  List<TodoModel> todoList = []; //contians all the task
  TodoModel todoModel = TodoModel(title: '', detail: '');
  
  setTodoValues(k, val) {
    print('KEY $k  VALUE $val');
    switch (k) {
      case 'title':
        todoModel.title = val;
        break;
      case 'detail':
        todoModel.detail = val;
        break;
      default:
    }
    notifyListeners();
  }

  addTodo() {
    if (todoModel.title != '') {
      todoList.add(todoModel);
      notifyListeners();
    }
  }
}
