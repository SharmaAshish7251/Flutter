import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoCard extends StatelessWidget {
  final String taskName;
  final bool isComplete;
  final Function(bool?) onCheckbox;
  final Function(BuildContext)? deleteFun;

  const TodoCard({
    super.key,
    required this.taskName,
    required this.isComplete,
    required this.onCheckbox,
    required this.deleteFun,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(6),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children:[
        SlidableAction(onPressed: deleteFun, icon: Icons.delete, backgroundColor: Colors.red,)
        ]),
        child: Container(
          // margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white70,

            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                bottomLeft: Radius.circular(6)

            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checkbox(value: isComplete, onChanged: onCheckbox),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    taskName,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      decoration: isComplete ? TextDecoration.lineThrough : TextDecoration.none,  /// working like if else  ? :
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {
                    if (deleteFun != null) {
                      deleteFun!(context);
                    }
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
