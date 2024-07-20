import "package:flutter/material.dart";

class QuestPage extends StatelessWidget {
  static const String id = 'Quest Page';
  const QuestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg_stats.jpeg", // Replace with your actual image path
            fit: BoxFit.cover, // Cover the entire screen
          ),
          //Quest Container
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              children: [
                //Quest info box
                Container(),
                //Text and buttons
                const Row(),
                const Divider(),
                Container(
                  height: 50,
                  width: 400,
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                    vertical: BorderSide(
                      width: 10,
                      color: Colors.black,
                    ),
                    horizontal: BorderSide(
                      width: 10,
                      color: Colors.black,
                    ),
                  )),
                  child: ListTile(
                    title: const Row(
                      children: [
                        Text(
                          'Gym',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '60min',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    trailing: Checkbox(
                      value: false,
                      onChanged: (toggle) {},
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
