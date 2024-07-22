import 'package:architect_system_app/components/QuestPage/task_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskTile extends StatefulWidget {
  final String task;
  final String taskQuantity;
  const TaskTile({
    super.key,
    required this.task,
    required this.taskQuantity,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          checkbox = !checkbox;
        });
      },
      child: Container(
        height: 80,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: HexColor('4355F5').withOpacity(0.28),
        ),
        child: Center(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TaskText(content: widget.task),
                const Spacer(),
                TaskText(
                  content: widget.taskQuantity,
                ),
              ],
            ),
            trailing: Checkbox(
              // checkColor: HexColor('4355F5'),
              activeColor: HexColor('4355F5'),
              value: checkbox,
              onChanged: (toggle) {
                setState(() {
                  checkbox = toggle!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
