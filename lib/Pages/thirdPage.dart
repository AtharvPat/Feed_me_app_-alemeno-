import 'dart:io';

import 'package:atharv_patil_app/Pages/fourthpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

import '../assets/icons_class.dart';
import '../assets/notificatio.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key, required this.cimage}) : super(key: key);

  final XFile cimage;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Positioned(
                right: 0,
                left: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 325,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/Tiger 2.jpg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AppIcon(
                    icon: Icons.arrow_back_outlined,
                    bgColor: Colors.lightGreen.shade800,
                    iconColor: Colors.white,
                    size: 40,
                    isize: 25,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 350,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.grey.shade200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black87),
                      child: ClipOval(
                        child: Image.file(
                          File(widget.cimage.path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    child: Text(
                      "Will you Eat this",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: "IndieFlower"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FourthPage()));
                        NotificationService().showNotification(
                            title: 'Success',
                            body: 'Thank you for sharing food with me');
                      },
                      child: AppIcon(
                        icon: Icons.check,
                        bgColor: Colors.lightGreen.shade800,
                        iconColor: Colors.white,
                        size: 70,
                        isize: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
