import 'package:flutter/material.dart';
import 'package:portfolio/widgets/experience_data.dart';

class ExperienceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExperienceData(
          jobRole: 'Head Coordinator', 
          company: 'Hack Club - SKCET', 
          description1: '• Organised 2 Hacakthons along with Extra-curricular competitions, Tech Webinars, Mentorship for all participants\n• Organised various Tech Webinars and Orientation sessions featuring Tech geeks', 
          duration: 'June 2021 - Present',          
          skills: 'Leadership, Creativity, Event organising.',
                  
        ),
        SizedBox(
            height: size.height * 0.05),
        ExperienceData(
          jobRole: 'Co-Developer', 
          company: 'Smart India Hackathon Portal And Smart India Hackathon Alumni Portal Development', 
          description1: '• Worked on the front-end for SIH - Portal organised by MHRD, government of India.\n• Drafted the content for emails, Cards in the portal', 
          duration: 'November 2021 - January 2022',          
          skills: 'Coding Standards , Version Control Systems, Website development using react, Team Collaboration.',                    
        ),
        SizedBox(
            height: size.height * 0.05),
        ExperienceData(
          jobRole: 'Flutter Developer Intern', 
          company: 'Incend Digital (P) Limited \– Coimbatore, India', 
          description1: '• Collaborated in building a Flutter application- PUPL, to monitor students\’ performance in curricular and co-curricular activities\n• Worked on UI/UX, API Integration, Core Logic of application.\n• Received Letter of Recommendation from Mr. Praveen Thirumurugan, Founder of Incend Digital (P) Limited', 
          duration: 'July 2021 - August 2021',          
          skills: 'Coding Standards , Version Control Systems, App Development using Flutter, Team Collaboration.',
                    
        ),
        SizedBox(
            height: size.height * 0.05),
        ExperienceData(
          jobRole: 'Marketing Intern', 
          company: 'Scholastic - Delhi, India', 
          description1: '• Executed the multichannel social media campaign increasing the brand awareness by 17%.\n• Designed Promotional Videos, Social Media Content, Flyers for product launch.\n• Received Letter of Recommendation from Mr. Avishek Roy, Marketing Head at Scholastic, India.', 
          duration: 'June 2020 \– August 2020',          
          skills: 'Content Marketing , Documentation, Social Media Marketing, Team Work',
                    
        ),
        SizedBox(
            height: size.height * 0.05),
        ExperienceData(
          jobRole: 'Student Partner Leader', 
          company: 'Internshala \- Gurgaon, India ', 
          description1: '• Lead over 1000+ Campus Ambassadors, supporting and motivating in their daily tasks leveraging sales by 20% and brand recognition by 22%.\n• Designed promotional content, testimonials and drafted documentations\n• Received Letter of Recommendation from Mr. Saikut Dutta, Marketing Manager at Internshala, India', 
          duration: 'May 2020 – August 2020',          
          skills: 'Leadership, Documentation, Persuasion, Team Work.',                    
        ),
        
      ],
    );
  }
}
