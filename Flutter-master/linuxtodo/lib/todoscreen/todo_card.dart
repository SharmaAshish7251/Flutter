import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoCard extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  final Function(bool?) onCheckboxChanged;
  final Function(BuildContext)? deleteFun;

  const TodoCard({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onCheckboxChanged,
    required this.deleteFun,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 06,
        bottom: 03,
        right: 06,
        left: 06,
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          dragDismissible: true,

          children: [

            SlidableAction(

              onPressed: deleteFun,
              icon: Icons.delete,
              backgroundColor: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(09),
                topRight: Radius.circular(09),
              ),
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(06)),

          child: Container(
            height: MediaQuery
                .sizeOf(context)
                .height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(09),
                topLeft: Radius.circular(09),
              ),
              color: Colors.blueGrey[100],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 09,),
                Checkbox(value: isCompleted, onChanged: onCheckboxChanged),
                SizedBox(width: 09,),
                Expanded(
                  child: Text(
                    taskName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 99,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black54,
                      decoration:
                      isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => deleteFun?.call(context),
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
