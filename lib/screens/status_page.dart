import 'package:flutter/material.dart';
import 'util_status/stat_bar.dart';
import 'util_status/stat_row.dart';
class StatusPage extends StatelessWidget {
  static const String id = 'Status Page';

  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Status"),
      ),
      body: Stack(
        fit: StackFit.expand, // Make the stack take up the whole screen
        children: [
          // Background image
          Image.asset(
            "assets/images/bg_stats.jpeg", // Replace with your actual image path
            fit: BoxFit.cover, // Cover the entire screen
          ),
          Center(
            child: Container(
              height: 600,
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: const Color.fromARGB(255, 141, 155, 180)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "STATUS",
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
                  const Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                          fontSize: 48,
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
                      Text(
                        "LEVEL",
                        style: TextStyle(
                          fontSize: 20,
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
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 146, 153, 166)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StatBar(
                                label: "REQUIRED POINTS",
                                value: 40,
                                maxValue: 100),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 220,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 170, 183, 206)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        _buildStatRow(
                            label: "STR", value: 30, icon: Icons.favorite),
                        const SizedBox(height: 10),
                        _buildStatRow(
                            label: "AGI", value: 20, icon: Icons.favorite),
                        const SizedBox(height: 10),
                        _buildStatRow(
                            label: "PER", value: 35, icon: Icons.favorite),
                        const SizedBox(height: 10),
                        _buildStatRow(
                            label: "VIT", value: 28, icon: Icons.favorite),
                        const SizedBox(height: 10),
                        _buildStatRow(
                            label: "INT", value: 30, icon: Icons.favorite),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(
      {required String label, required int value, required IconData icon}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: StatRow(label: label, value: value),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: StatusPage(),
  ));
}
