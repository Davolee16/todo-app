// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child:  Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              // checkbox
              Checkbox(value: taskCompleted, onChanged: onChanged),
        
              // task name
        
              Text(taskName),
            ],
          ),
          decoration: BoxDecoration(color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      );
  }
  
}