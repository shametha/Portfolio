import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project_card.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "04.",
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
            "Project",
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
          SizedBox(
            width: size.width * 0.01,
          ),
          Container(
            width: size.width / 4,
            height: 1.10,
            color: Colors.white,
          ),
        ]),
        Container(
            height: size.height * 2,
            child: Column(
              children: [
                ProjectCard(
                  imagePath: "images/p.jpg",
                  ontab: () {
                    //launch.launchURL(
                    //"");
                  },
                  projectDesc:
                      "A flutter package which help developer in creating a onboarding screens of their app.",
                  projectTitle: "WoMentr",
                  tech: "Dart",
                )
              ],
            )),
      ],
    );
  }
}
