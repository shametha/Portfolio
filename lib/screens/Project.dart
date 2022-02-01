import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project_card.dart';

class Project extends StatelessWidget {
  const Project({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child:Column(children: [
        ProjectCard(imagePath: "images/pic10.jpg",
                                        ontab: () {
                                          //launch.launchURL(
                                              //"https://pub.dev/packages/flutter_onboarding_screen");
                                        },
                                        projectDesc:
                                            "A flutter package which help developer in creating a onboarding screens of their app.",
                                        projectTitle:
                                            "Flutter Onboarding Screen Package",
                                        tech: "Dart",)

      ],)
      
      
    );
  }
}