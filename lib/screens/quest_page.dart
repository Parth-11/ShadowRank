import "package:architect_system_app/components/QuestPage/task_tile.dart";
import "package:architect_system_app/screens/quest_bottom_sheet.dart";
import "package:flutter/material.dart";

class QuestPage extends StatefulWidget {
  static const String id = 'Quest Page';
  const QuestPage({super.key});

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    // height: MediaQuery.sizeOf(context).height * (2 / 3),
                    child: const QuestBottomSheet(),
                  ));
        },
        child: const Icon(Icons.edit),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg_stats.jpeg", // Replace with your actual image path
            fit: BoxFit.cover, // Cover the entire screen
          ),
          //Quest Container
          SafeArea(
           
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Quest info box
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.only(top: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(8.0),
                     ),
                     child: const Text(
                      "QUESTS",
                      style: TextStyle(
                        fontSize: 35,
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         shadows: [
                        Shadow(
                          blurRadius: 25.0,
                          offset: Offset(0, 0),
                          color: Colors.blue,
                        ),
                      ],
                      ),
                     ),
                  ),
                  //Text and buttons
                  const Row(),
                  const Divider(),
                  const TaskTile(
                    task: 'Gym',
                    taskQuantity: '60min',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
