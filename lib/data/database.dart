import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // refence our box
  final _mybox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Make Tutorial', false],
      ['Do Exercise', true],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  // update the database
  void updateDataBase() {
    _mybox.put('TODOLIST', toDoList);
  }
}
