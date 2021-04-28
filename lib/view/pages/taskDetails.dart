import 'package:flutter/material.dart';

class Taskdetails extends StatefulWidget {
  final String title;
  final bool completed;
  Taskdetails({this.title, this.completed});
  @override
  _TaskdetailsState createState() => _TaskdetailsState();
}

class _TaskdetailsState extends State<Taskdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello iti"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.completed ? "Task is Done" : "Task not Done yet",
              style: TextStyle(
                  fontSize: 15,
                  color: widget.completed ? Colors.green : Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
