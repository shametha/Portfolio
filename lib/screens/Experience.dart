import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/experience_card.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Row(
          children: [
          Container(
              height: size.height*1.2,
              width: size.width * 0.8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "03.",
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
                          "Experience",
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
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                            height: size.height +5,
                            child: Center(
                              child: Stack(
                                children: [
                                  Container(
                                    height: size.height * 1.2,
                                    padding:
                                        EdgeInsets.fromLTRB(15, 20, 0, 0),
                                    child: VerticalDivider(
                                      color: Color(0xff64FFDA),
                                      thickness: 1.75,
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height: size.height * 0.07),
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor:
                                              Color(0xff64FFDA),
                                          child: FaIcon(
                                              FontAwesomeIcons.heading,
                                              color: Colors.indigo[900]),
                                        ),
                                        SizedBox(height: size.height * 0.1),
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor:
                                              Color(0xff64FFDA),
                                          child: FaIcon(
                                              FontAwesomeIcons.laptopCode,
                                              color: Colors.indigo[900]),
                                        ),
                                        SizedBox(
                                            height: size.height * 0.12),
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor:
                                              Color(0xff64FFDA),
                                          child: FaIcon(
                                              FontAwesomeIcons.code,
                                              color: Colors.indigo[900]),
                                        ),
                                        SizedBox(height: size.height * 0.15),
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor:
                                              Color(0xff64FFDA),
                                          child: FaIcon(
                                              FontAwesomeIcons.bullseye,
                                              color: Colors.indigo[900]),
                                        ),
                                        SizedBox(height: size.height * 0.13),
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor:
                                              Color(0xff64FFDA),
                                          child: FaIcon(
                                              FontAwesomeIcons.crown,
                                              color: Colors.indigo[900]),
                                        ),
                                        
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Container(
                        height: size.height ,
                        child: ExperienceCard(),
                      ),
                    ],
                  ),
                ],
              ))
        ]),
      ],
    );
  }
}
