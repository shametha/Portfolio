import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        child: Row(
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
            Icon(FontAwesomeIcons.solidHeart,color: Colors.pink,),
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
      ),
    );
  }
}
