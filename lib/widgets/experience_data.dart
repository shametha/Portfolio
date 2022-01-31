import 'package:flutter/material.dart';

class ExperienceData extends StatelessWidget {
  final String jobRole;
  final String company;
  final String duration;
  final String description1;
  final String skills; 

  ExperienceData(
      {
        Key? key,
        required this.jobRole, 
       required this.company, 
       required this.description1,  
       required this.skills, 
       required this.duration,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          jobRole,
          style: TextStyle(
            fontSize: 22.0,
            color: Color(0xffCCD6F6),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          company,
          style: TextStyle(
            fontSize: 13.0,
            color: Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          duration,
          style: TextStyle(
            fontSize: 12.0,
            color: Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          description1,
          style: TextStyle(
            fontSize: 14.0,
            color: Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w900,
          ),
        ),    
      ],
    );
  }
}
