import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Model/Launcher.dart';

class ProjectCardImage extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech;
  final String githubLink;

  ProjectCardImage({
    required this.imagePath,
    required this.projectDesc,
    required this.projectTitle,
    required this.tech,
    required this.githubLink,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Launcher launch = Launcher();
    return Container(
      width: size.width - 100,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            height: size.height - 100,
            width: size.width - 84,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: size.height * 0.60,
                    width: size.width * 0.5,
                    child: Image(
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
                Positioned(
                  top: 18.0,
                  right: 60.0,
                  child: Container(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    child: Wrap(
                      alignment: WrapAlignment.end,
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.15,
                  right: 10.0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white70),
                    width: size.width * 0.32,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            projectDesc,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.75,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          color: Colors.white,
                          onPressed: () {
                            launch.launchURL(githubLink);
                          }),                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
