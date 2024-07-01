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
  var image;

  late final List<Face> faces;

  var faceDetector;

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
    final options = FaceDetectorOptions(enableLandmarks: true,
    performanceMode: FaceDetectorMode.fast);
    faceDetector = FaceDetector(options: options);
  }

@override
void dispose() {
  super.dispose();
}

  doFaceDetection() async {
    res = "";
    print("Function called...");
    InputImage inputImage = InputImage.fromFile(_image!);
    faces = await faceDetector.processImage(inputImage);
    print("FACES => "+faces.length.toString());
    setState(() {
       _image;
    });
    drawRectangleAroundFaces();
  }

  _imgFromGallery() async {
    print("Function called");
    // path
    XFile? PickedFile =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      setState(() {
        _image = File(PickedFile.path);
        doFaceDetection();
      });
      print(_image);
    }
  }

  drawRectangleAroundFaces() async{
    image = await _image?.readAsBytes();
    print("As Bytes : $image");
    image = await decodeImageFromList(image);
    print("Decode : $image");
    setState(() {
      image;
      res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find Face!!")),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.amber),
              margin: EdgeInsets.only(top: 100),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        _imgFromGallery();
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Container(
                        width: 335,
                        height: 495,
                        margin: EdgeInsets.only(top: 45),
                        child: image!=null?
                        Center(
                          child: FittedBox(
                            child: SizedBox(
                              width: image.width.toDouble(),
                              height: image.height.toDouble(),
                              child: CustomPaint(
                                painter: FacePainter(facesList:faces,imageFile:image),
                              ),
                            ),
                          ),
                        ):Container(
                          color: Colors.black,
                          width: 340,
                          height: 330,
                          child: const Icon(Icons.photo,color: Colors.white,),
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                res,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 36,color:Color.fromARGB(255, 255, 100, 157)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FacePainter extends CustomPainter {
  List<Face> facesList;
  dynamic imageFile;
  FacePainter({required this.facesList, required this.imageFile});
  @override
  void paint(Canvas canvas, Size size) {
    if (imageFile != null)
    {
      canvas.drawImage(imageFile, Offset.zero, Paint());
    }
    Paint p = Paint();
    p.color = Colors.red;
    p.style = PaintingStyle.stroke;
    p.strokeWidth = 20;

    for (Face face in facesList)
    {
       canvas.drawRect(face.boundingBox,p);
    }
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}
