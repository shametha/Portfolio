import 'package:flutter/material.dart';

class EducationData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final String cgpa;


  const EducationData({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.duration,
    required this.cgpa,
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
                title,
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
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 13.0,
            color: Color(0xffCCD6F6).withOpacity(0.7),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          cgpa,
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

