import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project_card_image.dart';
import 'package:portfolio/widgets/project_card_video.dart';

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
            height: size.height * 6 ,
            child: Column(
              children: [
                ProjectCardVideo(
                  id: 0,
                  projectDesc:
                      "WoMentr is a virtual anonymous mobile app that serves as a single platforms for women to discuss all their problems and insecurities. Women can post their problems, doubts, and ideas and to every question asked, other women users from across the globe can comment, answer, upvote or downvote.Also the identity of the user is never revealed to anyone so women can freely discuss their problems without the fear being judged .",
                  projectTitle: "Shero",
                  tech: "Dart- Sentiment Analysis, Tensorflow-lite, Firebase-cloud-messaging", 
                  githubLink: 'https://github.com/shametha/WoMentr', 
                  otherLink: 'https://devpost.com/software/shero-wc0bkg', 
                  youtubelink: 'https://youtu.be/dcj_J3tjbX8',
                ), 
                ProjectCardVideo(
                  id: 1,
                  projectDesc:
                      "WoMentr is a virtual anonymous mobile app that serves as a single platforms for women to discuss all their problems and insecurities. Women can post their problems, doubts, and ideas and to every question asked, other women users from across the globe can comment, answer, upvote or downvote.Also the identity of the user is never revealed to anyone so women can freely discuss their problems without the fear being judged .",
                  projectTitle: "WoMentr",
                  tech: "Dart", 
                  githubLink: 'https://github.com/shametha/WoMentr', 
                  otherLink: 'https://devpost.com/software/womentr-8e3df1', 
                  youtubelink: 'https://youtu.be/1QHQ0YJodxI',
                ),
                 ProjectCardVideo(
                  id: 2,
                  projectDesc:
                      "BID is a flutter application that allows indegenious farmer and artisans to sell their products at an international platform in the form of an auction. This application was built to promote the small business during the pandemic",
                  projectTitle: "BID",
                  tech: "Dart", 
                  githubLink: 'https://github.com/shametha/BID', 
                  otherLink: 'https://youtu.be/a8XGQ7IJ45Y', 
                  youtubelink: 'https://youtu.be/a8XGQ7IJ45Y',
                ),  
                ProjectCardImage(
                  imagePath: 'images/Docoline.png', 
                  projectDesc: 'Docoline is a virtual Doctor appointment booking application, that has been developed to override the problems of booking an appointment with a doctor specially prevailing in the pandemic situation. This software is supported to eliminate the hardships faced by this existing manual booking system. No formal knowledge is needed for the user to use this system. Thus by this all it proves it is user-friendly.', 
                  projectTitle: 'Docoline', 
                  tech: 'dart', 
                  githubLink: 'https://github.com/shametha/Docoline', 
                  
                  ),              
               
                ProjectCardImage(
                  imagePath: 'images/Cookify.png', 
                  projectDesc: 'A flutter application where users worldwide can share and view recipes from other users. This application has a great UI.', 
                  projectTitle: 'Cookify', 
                  tech: 'dart', 
                  githubLink: 'https://github.com/shametha/Flutter-RecipeApp-UI', 
                  
                  ),
                  ProjectCardImage(
                  imagePath: 'images/Noted.png', 
                  projectDesc: 'A flutter application where users worldwide can share and view recipes from other users. This application has a great UI.', 
                  projectTitle: 'Noted', 
                  tech: 'dart', 
                  githubLink: 'https://github.com/shametha/Flutter-RecipeApp-UI', 
                 
                  ),
              ],              
            )),
      ],
    );
  }
}
