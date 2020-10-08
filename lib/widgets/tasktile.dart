import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  Tasktile({this.title,this.isChecked,this.togglecheckBox,this.longpressCallback});
  final String title;
  final bool isChecked;
  final Function togglecheckBox;
  final Function longpressCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
        title,
        style:TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:togglecheckBox ,
        ),
      );
  }
}

