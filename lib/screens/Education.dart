import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/education_card.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(width: size.width * 0.3),
        Container(
            height: size.height * 0.8,
            width: size.width * 0.5,
            child: Row(children: [
              Container(
                  height: size.height * 0.9,
                  width: size.width / 2 - 100,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "02.",
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
                            "Education",
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
                      Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                                height: size.height * 0.6,
                                child: Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: size.height * 0.55,
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
                                              backgroundColor: Color(0xff64FFDA),
                                              child: FaIcon(
                                                  FontAwesomeIcons.laptopCode,
                                                  color: Colors.indigo[900]),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.1),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor:Color(0xff64FFDA),
                                              child: FaIcon(
                                                  FontAwesomeIcons.laptopHouse,
                                                  color: Colors.indigo[900]),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.12),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Color(0xff64FFDA),
                                              child: FaIcon(
                                                  FontAwesomeIcons.school,
                                                  color: Colors.indigo[900]),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.1),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          Expanded(
                            flex: 3,
                              child: Container(
                            height: size.height * 0.5,
                            child: EducationCard(),
                          ))
                        ],
                      )
                    ],
                  ))
            ])),
      ],
    );
  }
}
