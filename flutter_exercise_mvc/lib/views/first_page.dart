import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise_mvc/controllers/todo_controller.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TodoController todoController = TodoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDos"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    controller: todoController.textTodo,
                    keyboardType: TextInputType.text,
                    onSubmitted: (String value) {
                      setState(() {
                        todoController.addTodo();
                      });
                    },
                  )
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: ListTile(
                      title: Text("${todoController.todos[index].text}"),
                      tileColor: Colors.amber[todoController.todos[index].done ? 400 : 200],
                      leading: todoController.todos[index].done ? Icon(Icons.done) : null,
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            todoController.deleteTodo(index);
                          });
                        },
                      ),
                      onLongPress: () {
                        setState(() {
                          todoController.changeStatus(index, !todoController.todos[index].done);
                        });
                      },
                    ),
                  ),
                );
              },
              itemCount: todoController.todos.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () { 
          setState(() {
            todoController.addTodo();  
          });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}