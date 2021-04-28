import 'package:iti/model/todo_model.dart';
import 'package:iti/service/todo_service.dart';
import 'package:iti/view/widges/todoCard.dart';
import 'package:flutter/material.dart';

class TodosPage extends StatefulWidget {
  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  bool isLoading = true;
  List<Todo> data = [];

  getData() async {
    data = await TodosService().getTodos();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (isLoading) ? Text("Still loading") : Text('Tasks'),
      ),
      // body: (isLoading)
      // ? CircularProgressIndicator()
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: TodoCard(
              title: data[index].title,
              completed: data[index].completed,
            ),
          );
        },
      ),
    );
  }
}
