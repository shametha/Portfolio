import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Model/Launcher.dart';

class MiniProjectCard extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String githubLink;

  MiniProjectCard({
    required this.imagePath,
    required this.projectTitle,
    required this.githubLink,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Launcher launch = Launcher();
    return Container(
      width: size.width/2.5 - 100,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                projectTitle,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.75,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 19,),
              IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              color: Colors.white,
              onPressed: () {
                launch.launchURL(githubLink);
              }),
            ],
          ),
          Image(
            image: AssetImage(imagePath),
            height: size.height*0.7,
          ),
          
              Text(
                " ",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.75,
                  color: Colors.white,
                ),
              ),            
        ],
      ),
    );
  }
}
