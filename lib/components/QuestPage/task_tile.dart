import 'package:architect_system_app/components/QuestPage/task_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
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
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TaskText(content: 'Gym'),
                Spacer(),
                TaskText(
                  content: '60min',
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
