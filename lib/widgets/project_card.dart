import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectCard extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech;
  final Function ontab;

  ProjectCard(
      {required this.imagePath,
      required this.ontab,
      required this.projectDesc,
      required this.projectTitle,
      required this.tech,
      });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 0.999,
      width: size.width - 100,
      //color: Colors.tealAccent,
      child: Column(
        children: [
          Container(
            height: size.height - 100,
            width: size.width - 84,
            child: Stack(
              children: [
                //Image
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: size.height * 0.60,
                    width: size.width * 0.5,
                    //color: Colors.redAccent,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),

                // Short Desc
                Positioned(
                  top: size.height / 6,
                  right: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.18,
                    width: size.width * 0.35,
                    color: Color(0xff172A45),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(projectDesc,
                          style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.75,
                                color: Colors.white.withOpacity(0.4),
                              ),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Project Tiitle
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    
                    child: Wrap(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      alignment: WrapAlignment.end,
                      children: [
                        Text(projectTitle,
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

                // Project Resources
                Positioned(
                  top: size.height * 0.36,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    // color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                      ],
                    ),
                  ),
                ),

                // Gitub Link
                Positioned(
                  top: size.height * 0.42,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    // color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          color: Colors.white.withOpacity(0.3),
                          onPressed: ontab(),
                        ),
                      ],
                    ),
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
