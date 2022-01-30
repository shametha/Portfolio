import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width * 0.3,
        child: Row(children: [
          Container(
              height: size.height * 0.7,
              width: size.width / 2 - 100,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "01.",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 3.0,
                          color: Color(0xff61F9D5),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text(
                        "About Me",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 3.0,
                          color: Color(0xff61F9D5),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Container(
                        width: size.width / 4,
                        height: 1.10,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Hello! I am Shametha, a student flutter developer from India.\n\nI enjoy developing stuff that make a difference in creating a better place to live in.I love exploring new domains and learning everyday!\n\n",
                        style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 1,
                          color: Color(0xff828DAA),
                        ),
                      ),
                      Text(
                        "Currently, I am purshuing my Bachlor's degree in Computer science and Engineering at SKCET. I am the head-coordinator of Hack-Club SKCET.\n\n",
                        style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 1,
                          color: Color(0xff828DAA),
                        ),
                      ),
                      Text(
                        "Here are a few technologies I love working with:\n\n",
                        style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 1,
                          color: Color(0xff828DAA),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width,
                    child: Wrap(
                      children: [
                        Container(
                          width: size.width * 0.20,
                          height: size.height * 0.15,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Dart",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Flutter",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Firebase",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "UI/UX",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.20,
                          height: size.height * 0.15,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Java",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "HTML & CSS",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "MYSQL",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.navigate_next_sharp, size: 14),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Git - Github",
                                    style: TextStyle(
                                      color: Color(0xff717C99),
                                      letterSpacing: 1.75,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ]));
  }
}
