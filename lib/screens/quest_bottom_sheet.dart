import 'package:architect_system_app/constants/QuestPage/text_box.dart';
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
      color: Colors.black54,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent.withOpacity(0.3),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Quest Builder',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration:
                    questFieldDecoration.copyWith(hintText: 'Enter Quest Name'),
                onChanged: (newText) {
                  // newTaskTitle = newText;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration:
                    questFieldDecoration.copyWith(hintText: 'Enter Quantity'),
                onChanged: (newText) {
                  // newTaskTitle = newText;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: DropdownMenu(
                    menuStyle: MenuStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.grey.shade400,
                      ),
                    ),
                    inputDecorationTheme: const InputDecorationTheme(
                      filled: true,
                      // focusColor: Colors.black38,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
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
              const SizedBox(
                height: 20,
              ),
              // const Spacer(),
              OutlinedButton(
                onPressed: () {
                  // Provider.of<TaskData>(context, listen: false)
                  //     .addTask(newTaskTitle);
                  // Navigator.pop(context);
                },
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.lightBlue)),
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
                        WidgetStatePropertyAll<Color>(Colors.lightBlue)),
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
