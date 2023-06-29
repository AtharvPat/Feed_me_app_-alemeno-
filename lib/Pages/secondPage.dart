import 'dart:io';

import 'package:atharv_patil_app/Pages/thirdPage.dart';
import 'package:atharv_patil_app/assets/notificatio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../assets/icons_class.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String imageURL = '';
  final List<String> tImage = [
    "images/Tiger 1.jpg",
    "images/Tiger 2.jpg",
  ];

  File? _image;
  final ImagePicker _picker = ImagePicker();

  _imgFromCamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo == null) return;
    if (photo == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => ThirdPage(cimage: photo)));

   
    String uniquefileName = DateTime.now().millisecondsSinceEpoch.toString();

    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('images');

    Reference referenceImageToUplod = referenceDirImages.child(uniquefileName);

    try {
      await referenceImageToUplod.putFile(File(photo.path));

      imageURL = await referenceImageToUplod.getDownloadURL();
      print('upload succcesfull');
    } catch (error) {}
  }

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
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(tImage[0]),
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
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: Center(
                              child: Image.asset("images/spoon+frame+fork.png"),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber, shape: BoxShape.circle),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: double.maxFinite,
                    child: Text(
                      "Click your meal",
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
                        _imgFromCamera();
                      },
                      child: AppIcon(
                        icon: Icons.camera_alt,
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
