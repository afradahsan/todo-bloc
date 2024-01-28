import 'package:bloc/bloc.dart';
import 'package:todo_cubit/model/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title){
    final todo = Todo(name: title, createdAt: DateTime.now());
    
    state.add(todo);
    emit(state);
  }
}