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
            "Projects",
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
            height: size.height * 5.27 ,
            child: Column(
              children: [
                ProjectCardVideo(
                  id: 0,
                  projectDesc:
                      "Shero is a mobile app intended to assist girls everyday in every possible way. Shero comprises of 4 components:\n\nDiva Dude: Diva dude is a virtual forum where girls can anonymously discuss their problems and support one other.\n\nDing Dong: Ding Dong brightens your day with a customized quote to lift your moods based on entries in the dear diary's journal section. \n\nDollar Dude: Dollar Dude helps users track their finances.\n\nDear Diary: Dear Diary is a personal journal where a girl can organize all her emotions and thoughts.",
                  projectTitle: "Shero",
                  tech: "Dart- Sentiment Analysis, Tensorflow-lite, Firebase-cloud-messaging", 
                  githubLink: 'https://github.com/shametha/WoMentr', 
                  otherLink: 'https://devpost.com/software/shero-wc0bkg', 
                  youtubelink: 'https://youtu.be/dcj_J3tjbX8',
                ), 
                ProjectCardVideo(
                  id: 1,
                  projectDesc:
                      "WoMentr is a virtual anonymous mobile app that serves as a single platforms for women to discuss all their problems and insecurities. \n\nWomen can post their problems, doubts, and ideas and to every question asked, other women users from across the globe can comment, answer, upvote or downvote.Also the identity of the user is never revealed to anyone so women can freely discuss their problems without the fear being judged .",
                  projectTitle: "WoMentr",
                  tech: "Dart", 
                  githubLink: 'https://github.com/shametha/WoMentr', 
                  otherLink: 'https://devpost.com/software/womentr-8e3df1', 
                  youtubelink: 'https://youtu.be/1QHQ0YJodxI',
                ),
                 ProjectCardVideo(
                  id: 2,
                  projectDesc:
                      "BID is a flutter application that allows indegenious farmer and artisans to sell their products at an international platform in the form of an auction.\n\n This application was built to promote small busineses during the pandemic.\n\nThe Auction ensures that seller gets maximum profits.",
                  projectTitle: "BID",
                  tech: "Dart", 
                  githubLink: 'https://github.com/shametha/BID', 
                  otherLink: 'https://youtu.be/a8XGQ7IJ45Y', 
                  youtubelink: 'https://youtu.be/a8XGQ7IJ45Y',
                ),  
                ProjectCardImage(
                  imagePath: 'assets/images/Docoline.png', 
                  projectDesc: 'Docoline is a virtual Doctor appointment booking application, that has been developed to override the problems of booking an appointment with a doctor specially during in the pandemic situation.\n\nThis software is supported to eliminate the hardships faced by this existing manual booking system.\n\nNo formal knowledge is needed for the user to use this system.\n\nAll user needs to do is sign up!', 
                  projectTitle: 'Docoline', 
                  tech: 'dart', 
                  githubLink: 'https://github.com/shametha/Docoline', 
                  
                  ),              
               
                ProjectCardImage(
                  imagePath: 'assets/images/Cookify.png', 
                  projectDesc: 'A flutter application where users worldwide can share and view recipes from other users.\n\nCookify also displays trending recipes\n\nUsers can also like and share the recipes they like', 
                  projectTitle: 'Cookify', 
                  tech: 'dart', 
                  githubLink: 'https://github.com/shametha/Flutter-RecipeApp-UI', 
                  
                  ),
                  ProjectCardImage(
                  imagePath: 'assets/images/Noted.png', 
                  projectDesc: 'Noted is a flutter application to take notes and store them in an organised manner.\n\nThe notes can be shared on any other platforms too.\n\nUsers can mark a note as important and delete if unwanted.', 
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
