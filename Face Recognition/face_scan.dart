import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

class FaceScan extends StatefulWidget {
  const FaceScan({super.key});

  @override
  State<FaceScan> createState() => _FaceScanState();
}

class _FaceScanState extends State<FaceScan> {
  // ImagePicker imagePicker = ImagePicker();
  late ImagePicker imagePicker;

  File? _image;
  String res = "";
  // var image;

  late final List<Face> faces;

  var faceDetector;


  doFaceDetection() async {
    res = "";
    InputImage inputImage  = InputImage.fromFile(_image!);
    // faces = await FaceDetector.processImage(inputImage);
  }


  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  _imgFromGallery() async{
    print("Function called");
    // path
    XFile? PickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (PickedFile!=null)
    {
      setState(() {
      _image = File(PickedFile.path);
        
      });
      print(_image);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Find Face!!")),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("assets/bg.jpg"),fit: BoxFit.cover )
        ),
        child: Column(
          
          children: [
            SizedBox(
              height: 10,
            )
            ,Container(
              // decoration: BoxDecoration(color: Colors.amber),
              margin: EdgeInsets.only(top: 100),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        _imgFromGallery();
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 8),
                        // if there is a image
                        child: _image!=null?
                                Image.file(_image!,
                                width: 335,
                                height: 495,
                                fit: BoxFit.fill,
                                ):
                                Container(
                                  width: 340,
                                  height: 330,
                                  color: Colors.black,
                                  child: Icon(Icons.photo,
                                  color: Colors.white,
                                  size: 100,
                                  ),
                                )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}