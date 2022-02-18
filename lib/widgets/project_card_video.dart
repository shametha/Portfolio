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
  final String youtubelink;

  ProjectCardVideo({
    required this.id,
    required this.projectDesc,
    required this.projectTitle,
    required this.tech, 
    required this.githubLink, 
    required this.otherLink, 
    required this.youtubelink,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Launcher launch = Launcher();
    return Container(
      height: size.height/1.1543,
      width: size.width - 100,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left:30,right: 30),
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
                  top: size.height *0.15,
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
                  top: size.height *0.07,
                  right: 10.0,  
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
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.link),
                        color: Colors.white,
                        onPressed: (){
                          launch.launchURL(otherLink);
                        }
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.youtube),
                        color: Colors.white,
                        onPressed: (){
                          launch.launchURL(youtubelink);
                        }
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
