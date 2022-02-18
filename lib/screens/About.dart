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
            padding: EdgeInsets.only(right: 100),
            height: 630,
            width: 630,
            child: Image(
              image: AssetImage('/images/TechStack.png'),
            ),
          ),
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
                  Text(
                    "Hello! I am Shametha, a pre-final year Computer Science and Engineering student and a self taught Flutter developer who is passionate about building captivating technical projects that have a material impact on real-world problems.\n\n♥️I love working with people who are excited about doing meaningful, impactful, and rewarding work. I always look forward to learning from those around me and am always ecstatic to take on new challenges.\n\n♥️ Outside of technical work, I like to think of myself as a multipotentialite who dabbles with Indian art, music and public speaking.\n\n\nHere are a few tools,technologies and languages I love working with:\n\n",
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  Java",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  Dart",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  C/C++",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  HTML",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  CSS",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  SQL",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: size.width*0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  FireBase",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  SQL",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width*0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  Git - GitHub",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  Visual Studio Code",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  Andriod Studio",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  IntelliJ IDEA",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  Figma",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.settings,size: 10,color: Colors.white,),
                              Text(
                                "  Invision Studio",
                                style: TextStyle(
                                    color: Colors.white70,
                                    letterSpacing: 1.75,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ]));
  }
}
