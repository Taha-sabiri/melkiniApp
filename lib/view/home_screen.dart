import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:melkino/constant/color.dart';
import 'package:melkino/constant/func.dart';
import 'package:melkino/view/vilayi_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedboxH(15),
                    FadeInRight(
                      child: Text(
                        "به ملکینو خوش آمدید",
                        style: TextStyle(
                            color: MyColor.pink,
                            fontFamily: 'Kalame',
                            fontSize: 32,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    FadeInRight(
                      child: Text(
                        "با ملکینو به راحتی برای املاک خود استوری و پست اینستاگرام درست کن",
                        style: TextStyle(
                            color: MyColor.gray,
                            fontFamily: 'Kalame',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedboxH(20),
                    FadeInLeft(
                      child: Container(
                        height: 139,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/headbaneer.png'))),
                      ),
                    ),
                    SizedboxH(17),
                    FadeInRight(
                        child: Container(
                      child: titr("نوع آگهی خود را در لیست زیر انتخاب کنید"),
                    )),
                    SizedboxH(15),
                    FadeInLeft(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Villayi()),
                              );
                            },
                            child: Container(
                              height: 265,
                              width: 165,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/img1.png'))),
                            ),
                          ),
                          Container(
                            height: 265,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/img2.png'))),
                          ),
                        ],
                      ),
                    ),
                    SizedboxH(10),
                    FadeInRight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 265,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/img3.png'))),
                          ),
                          Container(
                            height: 265,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/Group 4.png'))),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
