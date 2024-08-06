import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/pages/register_page.dart';

class IntroPage extends StatefulWidget {
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List imageList = [
    {"id": 1, "image_path": 'lib/images/Thesis-rafiki.png'},
    {"id": 2, "image_path": 'lib/images/Course app-rafiki.png'},
    {"id": 3, "image_path": 'lib/images/Chat bot-rafiki.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              const Text(
                'Welcome to Dept Link',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration: Durations.extralong4,
                        aspectRatio: 1,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return Container(
                          width: currentIndex == entry.key ? 17 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? Colors.red
                                  : Colors.teal),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: const Text(
                    'Find all your education stuff in just One App. '
                    'Ask your Queries with Chatbot, Organized notes and assignment uploaded by faculty.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage(
                      onTap: () {},
                    );
                  },
                )),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 130.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Login Now",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'New user? Register as',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //Teacher

              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return RegisterPage(
                          onTap: () {},
                        );
                      },
                    )),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              child: const Text("Teacher",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 8,
                  ),

                  Container(
                    child: const Text(
                      'Or',
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(
                    width: 5,
                  ),

                  //Student

                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return RegisterPage(
                          onTap: () {},
                        );
                      },
                    )),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Student",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
