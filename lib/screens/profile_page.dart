import 'package:architect_system_app/components/ProfilePage/detail_box.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stroke_text/stroke_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage('assets/images/profilePage_bg.png'),
          // ),
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Material(
                  borderRadius: BorderRadius.circular(16.0),
                  elevation: 10,
                  color: HexColor('4355F5').withOpacity(0.5),
                  child: MaterialButton(
                    onPressed: () {},
                    height: 40,
                    minWidth: 20,
                    child: const Icon(Icons.edit),
                  ),
                )),
            const CircleAvatar(
              radius: 100,
              child: Image(image: AssetImage('assets/images/Avatar.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: 90,
                width: 269,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.all(
                    Radius.circular(20),
                  ),
                  color: HexColor('4355F5').withOpacity(0.28),
                ),
                child: const Column(
                  children: [
                    StrokeText(
                      text: 'Sun Jin Woo',
                      textStyle: TextStyle(
                        fontFamily: 'Solo Level',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StrokeText(
                          text: 'Level',
                          textStyle: TextStyle(
                            fontFamily: 'Solo Level',
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          strokeColor: Colors.black,
                          strokeWidth: 3,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        StrokeText(
                          text: '20',
                          textStyle: TextStyle(
                            fontFamily: 'Solo Level',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          strokeColor: Colors.black,
                          strokeWidth: 3,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadiusDirectional.all(
                        Radius.circular(20),
                      ),
                      color: HexColor('4355F5').withOpacity(0.28),
                    ),
                    child: const Center(
                      child: StrokeText(
                        text: 'Age',
                        textStyle: TextStyle(
                          fontFamily: 'Solo Level',
                          fontSize: 20,
                        ),
                        strokeColor: Colors.black,
                        strokeWidth: 3,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadiusDirectional.all(
                        Radius.circular(20),
                      ),
                      color: HexColor('4355F5').withOpacity(0.28),
                    ),
                    child: const Center(
                      child: StrokeText(
                        text: 'Email',
                        textStyle: TextStyle(
                          fontFamily: 'Solo Level',
                          fontSize: 20,
                        ),
                        strokeColor: Colors.black,
                        strokeWidth: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: HexColor('4355F5').withOpacity(0.28),
              ),
              child: Column(
                children: [
                  //Text part
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const StrokeText(
                          text: 'Friends',
                          textStyle: TextStyle(
                            fontFamily: 'Solo Level',
                            fontSize: 20,
                          ),
                          strokeColor: Colors.black,
                          strokeWidth: 3,
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              StrokeText(
                                text: 'See All',
                                textStyle: TextStyle(
                                  fontFamily: 'Solo Level',
                                  fontSize: 20,
                                ),
                                strokeColor: Colors.black,
                                strokeWidth: 3,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  //Friends avatar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 40,
                          child: Image(
                            image: AssetImage('assets/images/Avatar.png'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const CircleAvatar(
                          radius: 40,
                          child: Image(
                            image: AssetImage('assets/images/Avatar.png'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const CircleAvatar(
                          radius: 40,
                          child: Image(
                            image: AssetImage('assets/images/Avatar.png'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const CircleAvatar(
                          radius: 40,
                          child: Image(
                            image: AssetImage('assets/images/Avatar.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: StrokeText(
                    text: 'Details',
                    textStyle: TextStyle(
                      fontFamily: 'Solo Level',
                      fontSize: 20,
                    ),
                    strokeColor: Colors.black,
                    strokeWidth: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DetailBox(),
                    DetailBox(),
                    DetailBox(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
