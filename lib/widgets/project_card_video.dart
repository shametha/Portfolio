import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Model/Launcher.dart';
import 'package:portfolio/Model/VideoPlayer.dart';

class ProjectCardVideo extends StatelessWidget {
  final int id;
  final String projectTitle;
  final String projectDesc;
  final String tech;
  final String githubLink;
  final String otherLink;

  ProjectCardVideo({
    required this.id,
    required this.projectDesc,
    required this.projectTitle,
    required this.tech, 
    required this.githubLink, 
    required this.otherLink,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Launcher launch = Launcher();
    return Container(
      height: size.height / 0.999,
      width: size.width - 100,
      color: Colors.tealAccent,
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
                      child: YoutubePlayer(
                        title: projectTitle,
                        id: id,
                      )),
                ),
                Positioned(
                  top: 16.0,
                  right: 40.0,
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
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: size.height *0.1,
                  right: 10.0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    height: size.height * 0.3,
                    width: size.width * 0.32,
                    color: Colors.white70,
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
                              color: Colors.blue[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                Container(
                  height: size.height * 0.08,
                  width: size.width * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.github),
                        color: Colors.white,
                        onPressed: (){
                          launch.launchURL(githubLink);
                        },
                      ),
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
