import 'package:iti/view/pages/taskDetails.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatefulWidget {
  final String title;
  final bool completed;

  TodoCard({this.title, this.completed});
  @override
  _TodoCardState createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    print("card state");
    print('${widget.completed} --- ${widget.title}');
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Taskdetails(
                    title: widget.title, completed: widget.completed),
              ));
        },
        child: Row(children: [
          (widget.completed) ? Icon(Icons.done) : Icon(Icons.clear),
          Text(widget.title),
        ]));
  }
}
