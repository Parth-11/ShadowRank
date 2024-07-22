import "package:architect_system_app/components/QuestPage/task_tile.dart";
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
              builder: (BuildContext context) {
                return Center(
                  child: Column(
                    children: [
                      const Text('Quest builder'),
                      const TextField(),
                      const TextField(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add to Quest List'),
                      )
                    ],
                  ),
                );
              });
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
                  Container(),
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
