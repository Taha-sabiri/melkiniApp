import 'package:animate_do/animate_do.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:melkino/constant/color.dart';
import 'package:melkino/constant/func.dart';
import 'package:melkino/view/image_screen.dart';

class Villayi extends StatefulWidget {
  const Villayi({super.key});

  @override
  State<Villayi> createState() => _VillayiState();
}

class _VillayiState extends State<Villayi> {
  @override
  bool vistextrent = false;
  bool vistexto = false;
  bool vistexrahn = false;
  String dropdownValue = 'خرید';
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: MyColor.pink,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(child: Icon(Icons.arrow_forward_ios)),
                ),
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedboxH(10),
                    FadeInRight(
                      child: Text(
                        "فرم زیر را تکمیل کنید",
                        style: TextStyle(
                            color: MyColor.pink,
                            fontFamily: 'Kalame',
                            fontSize: 32,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    FadeInRight(
                      child: Text(
                        "اطلاعات ملک خود را وارد کنید و در آخر بر روی ساختن \nقالب کلیک کنید ",
                        style: TextStyle(
                            color: MyColor.gray,
                            fontFamily: 'Kalame',
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedboxH(20),
                    SizedBox(
                      width: 343,
                      child: DropdownSearch<String>(
                        popupProps: PopupProps.menu(
                          menuProps:
                              MenuProps(borderRadius: BorderRadius.circular(8)),
                          showSelectedItems: true,
                          disabledItemFn: (String s) => s.startsWith('I'),
                        ),
                        items: [
                          "فروش",
                          "اجاره",
                          "رهن",
                        ],
                        dropdownDecoratorProps: DropDownDecoratorProps(
                          baseStyle: TextStyle(
                            fontFamily: 'Kalame',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          dropdownSearchDecoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, style: BorderStyle.solid)),
                            labelText: "نوع آگهی",
                            hintText: "نوع آگهی خود را انتخاب کنید",
                          ),
                        ),
                        onChanged: (value) {
                          if (value == 'فروش') {
                            setState(() {
                              vistexto = true;
                            });
                          } else
                            vistexto = false;
                          if (value == 'اجاره') {
                            setState(() {
                              vistextrent = true;
                            });
                          } else
                            vistextrent = false;
                          if (value == 'رهن') {
                            setState(() {
                              vistexrahn = true;
                            });
                          } else
                            vistexrahn = false;
                        },
                      ),
                    ),
                    Visibility(
                      visible: vistextrent,
                      child: Column(
                        children: [
                          SizedboxH(20),
                          Row(
                            children: [
                              SizedBox(
                                width: 165,
                                child: TextFormField(
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(98, 98, 98, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Color.fromRGBO(21, 70, 248, 1),
                                      )),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.26))),
                                      hintText: " ۳۵۳ میلیون",
                                      hintStyle: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Kalame',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      labelText: "قیمت پیش",
                                      labelStyle: TextStyle(
                                        fontSize: 15,
                                        color: MyColor.gray,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Kalame',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.start),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 165,
                                child: TextFormField(
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(98, 98, 98, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        color: Color.fromRGBO(21, 70, 248, 1),
                                      )),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.26))),
                                      hintText: " ۳۵۳ میلیون",
                                      hintStyle: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Kalame',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      labelText: "قیمت اجاره",
                                      labelStyle: TextStyle(
                                        fontSize: 15,
                                        color: MyColor.gray,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Kalame',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.start),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: vistexrahn,
                      child: Column(
                        children: [
                          SizedboxH(20),
                          SizedBox(
                            width: 343,
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(98, 98, 98, 1),
                                decoration: TextDecoration.none,
                                fontFamily: 'Kalame',
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color.fromRGBO(21, 70, 248, 1),
                                  )),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.26))),
                                  hintText: " ۳۵۳ میلیون",
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  labelText: "قیمت رهن",
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: MyColor.gray,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.start),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: vistexto,
                      child: Column(
                        children: [
                          SizedboxH(20),
                          SizedBox(
                            width: 343,
                            child: TextFormField(
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(98, 98, 98, 1),
                                decoration: TextDecoration.none,
                                fontFamily: 'Kalame',
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color.fromRGBO(21, 70, 248, 1),
                                  )),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1,
                                          color:
                                              Color.fromRGBO(0, 0, 0, 0.26))),
                                  hintText: " ۳۵۳ میلیون",
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  labelText: "قیمت فروش",
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: MyColor.gray,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.start),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedboxH(20),
                    SizedBox(
                      width: 343,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(98, 98, 98, 1),
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.26))),
                            hintText: " آپارتمان منطقه تعاون",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            labelText: "نام ملک",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: MyColor.gray,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start),
                      ),
                    ),
                    SizedboxH(25),
                    titr("ویژگی های ملک "),
                    SizedboxH(20),
                    SizedBox(
                      width: 343,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(98, 98, 98, 1),
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.26))),
                            hintText: " ویژگی اول ملک خود را بنویسید ...",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            labelText: "ویژگی اول",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: MyColor.gray,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start),
                      ),
                    ),
                    SizedboxH(20),
                    SizedBox(
                      width: 343,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(98, 98, 98, 1),
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.26))),
                            hintText: " ویژگی اول ملک خود را بنویسید ...",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            labelText: "ویژگی اول",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: MyColor.gray,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start),
                      ),
                    ),
                    SizedboxH(20),
                    SizedBox(
                      width: 343,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(98, 98, 98, 1),
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.26))),
                            hintText: " ویژگی اول ملک خود را بنویسید ...",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            labelText: "ویژگی اول",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: MyColor.gray,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start),
                      ),
                    ),
                    SizedboxH(20),
                    SizedBox(
                      width: 343,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(98, 98, 98, 1),
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.26))),
                            hintText: " ویژگی اول ملک خود را بنویسید ...",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            labelText: "ویژگی اول",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: MyColor.gray,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start),
                      ),
                    ),
                    SizedboxH(20),
                    SizedBox(
                      width: 343,
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(98, 98, 98, 1),
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.26))),
                            hintText: " ویژگی اول ملک خود را بنویسید ...",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            labelText: "ویژگی اول",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: MyColor.gray,
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w500,
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start),
                      ),
                    ),
                    SizedboxH(30),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ImgScreen()));
                      },
                      child: SizedBox(
                        height: 54,
                        width: 343,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: MyColor.pink,
                              borderRadius: BorderRadius.circular(7)),
                          child: Text(
                            "تکمیل ثبت نام",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontFamily: 'Kalame',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
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
