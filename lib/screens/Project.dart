import 'package:flutter/material.dart';
import 'package:portfolio/Model/Launcher.dart';
import 'package:portfolio/widgets/project_card_image.dart';
import 'package:portfolio/widgets/project_card_video.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Launcher launch = Launcher();
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
            height: size.height * 3,
            child: Column(
              children: [
                ProjectCardVideo(
                  id: 0,
                  projectDesc:
                      "WoMentr is a virtual anonymous mobile app that serves as a single platforms for women to discuss all their problems and insecurities. Women can post their problems, doubts, and ideas and to every question asked, other women users from across the globe can comment, answer, upvote or downvote.Also the identity of the user is never revealed to anyone so women can freely discuss their problems without the fear being judged .",
                  projectTitle: "WoMentr",
                  tech: "Dart", 
                  githubLink: 'https://github.com/shametha/WoMentr', 
                  otherLink: 'https://devpost.com/software/womentr-8e3df1',
                ),  
                ProjectCardImage(
                  imagePath: 'images/bg.jpg', 
                  projectDesc: 'Docoline is a virtual Doctor appointment booking application, that has been developed to override the problems of booking an appointment with a doctor specially prevailing in the pandemic situation. This software is supported to eliminate the hardships faced by this existing manual booking system. No formal knowledge is needed for the user to use this system. Thus by this all it proves it is user-friendly.', 
                  projectTitle: 'Docoline', 
                  tech: 'dart', 
                  githubLink: 'https://github.com/shametha/Docoline', 
                  otherLink: ''),              
                ProjectCardVideo(
                  id: 1,
                  projectDesc:
                      "BID is a flutter application that allows indegenious farmer and artisans to sell their products at an international platform in the form of an auction. This application was built to promote the small business during the pandemic",
                  projectTitle: "BID",
                  tech: "Dart", 
                  githubLink: 'https://github.com/shametha/BID', 
                  otherLink: 'https://youtu.be/qGPyYEPY33U',
                )
              ],              
            )),
      ],
    );
  }
}
