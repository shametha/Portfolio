import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Model/Launcher.dart';

class Contact extends StatelessWidget {
  Contact({Key? key}) : super(key: key);
  final Launcher launch = Launcher();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height*0.9,
        width: MediaQuery.of(context).size.width - 100,
        child: Column(
          children: [
            SizedBox(height: size.height*0.3,),
            ElevatedButton(onPressed:(){
                  launch.launchURL("https://drive.google.com/drive/folders/1ctlj80gBAwnxH_j3dp7hBGgljRtDzLC3?usp=sharing");
                } , 
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("View my Resume!",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold),),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff61F9D5)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.indigo[900]!),
                ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(height: size.height*0.1,),
                Container(
                  margin: EdgeInsets.all(5),
                  width: 40,
                  height: 40,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      color: Color(0xff052EC1),
                      iconSize: 20.0,
                      onPressed: () {
                        launch
                            .launchURL("https://www.linkedin.com/in/shametha");
                      }),
                ),                
                Container(
                  margin: EdgeInsets.all(5),
                  width: 40,
                  height: 40,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      icon: Icon(Icons.mail_outline_rounded),
                      color: Color(0xff052EC1),
                      iconSize: 20.0,
                      onPressed: () {
                        launch.launchEmail();
                      }),
                ),
              ],
            ),
            SizedBox(height: size.height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Designed & Built by Shametha   ",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    letterSpacing: 1.75,
                    fontSize: 14.0,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.pink,
                ),
                Text(
                  "   With Flutter",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    letterSpacing: 1.75,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
