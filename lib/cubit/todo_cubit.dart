import 'package:bloc/bloc.dart';
import 'package:todo_cubit/model/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title){
    if(title.isEmpty){
      addError('title empty!');
    }
    final todo = Todo(name: title, createdAt: DateTime.now());
    
    state.add(todo);
    emit([...state]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}