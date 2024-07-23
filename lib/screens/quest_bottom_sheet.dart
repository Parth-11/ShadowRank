import 'package:flutter/material.dart';
import 'package:architect_system_app/constants/QuestPage/attribute_type_list.dart';

class QuestBottomSheet extends StatefulWidget {
  const QuestBottomSheet({super.key});

  @override
  State<QuestBottomSheet> createState() => _QuestBottomSheetState();
}

class _QuestBottomSheetState extends State<QuestBottomSheet> {
  String attributeType = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black54,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(212, 11, 35, 68),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Quest Builder',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  // newTaskTitle = newText;
                },
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  // newTaskTitle = newText;
                },
              ),
              Align(
                alignment: Alignment.center,
                child: DropdownMenu(
                    onSelected: (value) {
                      setState(() {
                        attributeType = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry(value: value, label: value);
                    }).toList()),
              ),
              OutlinedButton(
                onPressed: () {
                  // Provider.of<TaskData>(context, listen: false)
                  //     .addTask(newTaskTitle);
                  // Navigator.pop(context);
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.lightBlue)),
                child: const Text(
                  'Add Task',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  // Provider.of<TaskData>(context, listen: false)
                  //     .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.lightBlue)),
                child: const Text(
                  'Complete Quest',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
