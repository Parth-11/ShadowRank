import 'package:architect_system_app/components/ProfilePage/avatar_element.dart';
import 'package:architect_system_app/components/ProfilePage/detail_box.dart';
import 'package:architect_system_app/components/ProfilePage/friend_avatar.dart';
import 'package:architect_system_app/components/ProfilePage/profile_text.dart';
import 'package:architect_system_app/components/ProfilePage/text_container.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
              ),
            ),
            const AvatarElement(),
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
                    ProfileText(
                      content: 'Sun Jin Woo',
                      size: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProfileText(
                          content: 'Level',
                          size: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ProfileText(
                          content: '20',
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  TextContainer(
                    content: 'Age',
                  ),
                  Spacer(),
                  TextContainer(content: 'Email')
                ],
              ),
            ),
            Container(
              height: 175,
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
                        const ProfileText(
                          content: 'Friends',
                          size: 20,
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              ProfileText(
                                content: 'See All',
                                size: 20,
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
                      FriendAvatar(
                        tap: () {},
                        avatar: const Image(
                          image: AssetImage('assets/images/Avatar.png'),
                        ),
                        friendName: 'Name',
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
                  child: ProfileText(
                    content: 'Details',
                    size: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DetailBox(
                      heading: 'Highetst Attribute',
                      content: 'Intelligence 20',
                    ),
                    DetailBox(
                      heading: 'Quest Completed',
                      content: '10',
                    ),
                    DetailBox(
                      heading: 'Penalty Quest',
                      content: '5',
                    ),
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
