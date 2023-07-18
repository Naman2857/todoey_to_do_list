import 'package:flutter/material.dart';
import 'package:todoey_to_do_list/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoey_to_do_list/models/task_data.dart';

class addtaskscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newtasktitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlue, fontSize: 30.0),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newtask) {
                  newtasktitle = newtask;
                  print(newtasktitle);
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                child: Text('Add'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Provider.of<taskdata>(context, listen: false)
                      .addtask(newtasktitle);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
