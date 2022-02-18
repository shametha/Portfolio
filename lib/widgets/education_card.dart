import 'package:flutter/material.dart';
import 'package:portfolio/widgets/education_data.dart';

class EducationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EducationData(
          title: "Sri Krishna College of Engineering and Technology",
          subTitle:"Bachelor's Degree in Computer Science and Engineering",
          duration: "2019 - Present\nExpected year of Graduation : 2023", 
          cgpa: 'Cummulative CGPA : 9.8',           
        ),
        SizedBox(
            height: size.height * 0.07),
        EducationData(
          title: "Maharishi Vidya Mandir",
          subTitle:"Class 12 CBSE\nMajoring in Computer Science",
          duration: "2017 - 2019", 
          cgpa: 'Percentage : 89%',
        ),
        SizedBox(
            height: size.height * 0.07),
        EducationData(
          title:"The Titan School",
          subTitle:"Class 10 CBSE",
          duration: "2004 - 2017", 
          cgpa: 'CGPA : 10',
        ),
      ],
    );
  }
}
