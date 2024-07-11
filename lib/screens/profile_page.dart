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
          image: DecorationImage(
              image: AssetImage('assets/images/profilePage_bg.png')),
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
              radius: 120,
              child: Image(image: AssetImage('assets/images/Avatar.png')),
            ),
            Container(
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
