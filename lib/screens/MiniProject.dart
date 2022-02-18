import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mini-project-card.dart';

class MiniProject extends StatefulWidget {
  const MiniProject({Key? key}) : super(key: key);

  @override
  _MiniProjectState createState() => _MiniProjectState();
}

class _MiniProjectState extends State<MiniProject> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "05.",
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
                  "Mini Projects",
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
                Container(
                  width: size.width / 4,
                  height: 1.10,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width:size.width*0.05),
              MiniProjectCard(
                imagePath: 'assets/images/NumberPicker.gif',
                projectTitle: 'Number Picker',
                githubLink:
                    'https://github.com/shametha/Flutter-Push-Notifications',
              ),
              SizedBox(width: size.width / 10),
              MiniProjectCard(
                imagePath: 'assets/images/textChanger.png',
                projectTitle: 'Text Changer',
                githubLink: 'https://github.com/shametha/Flutter-Text-changer',
              ),
            ],
          ),
          SizedBox(height:size.width*0.05),
          Row(
            children: [
              SizedBox(width:size.width*0.05),
              MiniProjectCard(
                imagePath: 'assets/images/pushNotifications.gif',
                projectTitle: 'Push Notifications',
                githubLink:
                    'https://github.com/shametha/Flutter-Push-Notifications',
              ),
              SizedBox(width: size.width / 10),
              MiniProjectCard(
                imagePath: 'assets/images/DiceRoller.png',
                projectTitle: 'Dice Roller',
                githubLink: 'https://github.com/shametha/Dice-Roller',
              ),
            ],
          ),
          SizedBox(height:size.width*0.05),
          Row(
            children: [
              SizedBox(width:size.width*0.05),
              MiniProjectCard(
                imagePath: 'assets/images/calc.png',
                projectTitle: 'Calculator',
                githubLink: 'https://github.com/shametha/Flutter-Calculator',
              ),
              SizedBox(width: size.width / 10),
              MiniProjectCard(
                imagePath: 'assets/images/themeChanger.gif',
                projectTitle: 'Theme Changer',
                githubLink: 'https://github.com/shametha/Flutter-Theme-Changer',
              ),
            ],
          )
        ],
      ),
    );
  }
}
