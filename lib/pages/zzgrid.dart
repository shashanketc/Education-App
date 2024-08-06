// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login_app/pages/profile_page.dart';

// ignore: must_be_immutable
class ZZPage extends StatelessWidget {
  List catNames = [
    'Upload',
    'Timetable',
    'Teachers',
    'Notes',
    'Coding',
    'SLRTCE',
  ];

  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF618DFD),
    Color(0xFFCB84FB),
    Color(0xFFFC7F7F),
    Color(0xFF78E667),
  ];

  List<Icon> catIcons = [
    Icon(
      Icons.upload_file,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.assignment,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      FontAwesome.building_circle_arrow_right_solid,
      color: Colors.white,
      size: 30,
    ),
  ];

  List imgList = [
    'Flutter',
    'React Native',
    'Python',
    'C#',
  ];

  ZZPage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coding'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Coding Courses",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF674AEF),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ProfilePage();
                        },
                      )),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF5F3FF)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'lib/images/${imgList[index]}.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '55 Videos',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
