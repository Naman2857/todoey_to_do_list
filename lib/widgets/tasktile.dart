import 'package:flutter/material.dart';

class tasktile extends StatelessWidget {
  bool ischecked = false;
  String tasktitle = '';
  final Function(bool?) checkboxcallback;
  final Function() longpresscallback;
  tasktile(this.ischecked, this.tasktitle, this.checkboxcallback,
      this.longpresscallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscallback,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        value: ischecked,
        onChanged: checkboxcallback,
      ),
    );
  }
}
