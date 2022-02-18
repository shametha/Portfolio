import 'package:flutter/material.dart';

class ExperienceData extends StatelessWidget {
  final String jobRole;
  final String company;
  final String duration;
  final String description1;
  final String skills;

  ExperienceData({
    Key? key,
    required this.jobRole,
    required this.company,
    required this.description1,
    required this.skills,
    required this.duration,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                jobRole,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    duration,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff64FFDA).withOpacity(0.9),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    company,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          description1,
          style: TextStyle(
            fontSize: 14.0,
            color: Color(0xffCCD6F6),
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
