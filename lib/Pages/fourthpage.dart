import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';




class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "GOOD JOB",
        style: TextStyle(
            color: Colors.lightGreen.shade800,
            fontFamily: "PermanentMarker",
            fontSize: 40),
      )),
    );
  }
}
