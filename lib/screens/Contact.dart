import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        child: Text(
          "Designed & Built by Shametha ❤️ Flutter",
          style: TextStyle(
            color: Colors.white.withOpacity(0.4),
            letterSpacing: 1.75,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
