import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskdata.dart';
class AddTask extends StatelessWidget {
   String task;
  @override
  Widget build(BuildContext context) {
    return
      Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Add Task',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.lightBlueAccent,
                   fontSize: 40.0,
                   fontWeight: FontWeight.bold,
                 ) ,
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                task = value;
              },
            ),
            SizedBox(height: 10,),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                    color: Colors.white,
                ),
              ),
              onPressed: (){
                if(task != null) {
                  Provider.of<TaskData>(context, listen: false).addtask(task);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
