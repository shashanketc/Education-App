// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login_app/pages/grid_page.dart';
import 'package:login_app/pages/profile_page.dart';
//import 'package:login_app/pages/profile_page.dart';
import 'package:login_app/pages/slrtce_page.dart';
import 'package:login_app/pages/teachers_page.dart';
import 'package:login_app/pages/timetable_page.dart';
import 'package:login_app/pages/upload_page.dart';
import 'package:login_app/pages/zzgrid.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List catNames = [
    'Upload',
    'Timetable',
    'Teachers',
    'Notes',
    'Coding',
    'SLRTCE',
  ];

  List<Color> catColors = [
    Color.fromARGB(255, 245, 89, 6),
    Color.fromARGB(255, 9, 94, 198),
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

  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UserAccountsDrawerHeader(
              accountName: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Welcome'),
              ),
              accountEmail: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(user.email!),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 50,
                child: Image.asset(
                  'lib/images/dept_link_trans_logo.png',
                  height: 65,
                  width: 60,
                ),
              ),
              currentAccountPictureSize: Size(95, 75),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("HOME"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("PROFILE"),
                onTap: () {
                  Navigator.pushNamed(context, '/profilepage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(FontAwesome.person_chalkboard_solid),
                title: Text("TEACHERS"),
                onTap: () {
                  Navigator.pushNamed(context, '/teacherspage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(FontAwesome.people_group_solid),
                title: Text("ECSSA"),
                onTap: () {
                  Navigator.pushNamed(context, '/ECSSApage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(FontAwesome.calendar),
                title: Text("TIMETABLE"),
                onTap: () {
                  Navigator.pushNamed(context, '/timetablepage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(FontAwesome.building_circle_arrow_right_solid),
                title: Text("SLRTCE"),
                onTap: () {
                  Navigator.pushNamed(context, '/SLRTCEpage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(FontAwesome.circle_info_solid),
                title: Text("ABOUT"),
                onTap: () {
                  Navigator.pushNamed(context, '/aboutpage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8,
              ),
              child: ListTile(
                leading: Icon(FontAwesome.robot_solid),
                title: Text("CHATBOT"),
                onTap: () {
                  Navigator.pushNamed(context, '/chatbotpage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("SETTING"),
                onTap: () {
                  Navigator.pushNamed(context, '/settingpage');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("LOG OUT"),
                onTap: () {
                  signUserOut();
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        signUserOut();
                      },
                      child: Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here...',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    //1

                    Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return UploadPage();
                            },
                          )),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(FontAwesome.upload_solid),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[0],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),

                    //2

                    Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return TimetablePage();
                            },
                          )),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFCF2F),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(FontAwesome.calendar),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[1],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),

                    //3

                    Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return TeachersPage();
                            },
                          )),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: catColors[2],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(FontAwesome.person_chalkboard_solid),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[2],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),

                    //4

                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return GridPage();
                        },
                      )),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: catColors[3],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(FontAwesome.book_solid),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            catNames[3],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          )
                        ],
                      ),
                    ),

                    //5

                    Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ZZPage();
                            },
                          )),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: catColors[4],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(FontAwesome.code_solid),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[4],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),

                    //6

                    Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return SLRTCEPage();
                            },
                          )),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: catColors[5],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: catIcons[5],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[5],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),

                    //7

                    Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ProfilePage();
                            },
                          )),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNames[4],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    ),
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
                          return ZZPage();
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
