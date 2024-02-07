import 'package:flutter/material.dart';
import 'package:practice/add_new_todo.dart';

import 'edit_todo_screen.dart';
import 'todo.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todoList =[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Todos',
          )),
      body: Visibility(
        visible: todoList.isNotEmpty,
        replacement: const Center(
          child: Text(' Todo list empty!'),
        ),
        child: ListView.separated(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return _buildTodoListTile(index);
            },
          separatorBuilder: (context, index){
              return  Divider(
                color: Colors.grey.shade200,
                height: 12,
                indent: 16,
                // endIndent: 16,
              );
          },

            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _onTapAddNewTodoFAB();
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
    );
  }

  ListTile _buildTodoListTile(int index) {
    return ListTile(
                title:  Text(todoList[index].title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(todoList[index].description),
                    Text(todoList[index].datetime.toString()),
                  ],
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed:() => showDeleteConfirmationDialog(index) ,
                        icon: const Icon(Icons.delete_forever_outlined)),
                    IconButton(onPressed: ()  {
                      _onTabEditTodo(index);
                        }, icon: const Icon(Icons.edit)),
                  ],
                ));
  }


  Future<void> _onTabEditTodo(int index) async{
    final Todo? updatedTodo = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  EditodoScreen(
          todo: todoList[index],
        ),
      ),
    );
    if(updatedTodo!=null){
      todoList[index] = updatedTodo;
      setState(() {});

    }
  }

  Future<void> _onTapAddNewTodoFAB () async{
    //Asynchronous
    // future
    //await
    //async
    final Todo? result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddNewTodoScreen(),
      ),
    );
    if(result != null){
      todoList.add(result);
      setState(() {});
    }
  }

  void _onTabRemoveTodo(int index){
    todoList.removeAt(index);
    setState(() {});
    Navigator.pop(context);
  }

  void showDeleteConfirmationDialog(int index){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Delete Todo'),
            content:
            const Text('Are you sure you want to delete?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => _onTabRemoveTodo(index),
                child: const Text('Yes Delete',style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          );
        });
  }
}
