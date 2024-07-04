import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class ClassificationDemo extends StatefulWidget {
  const ClassificationDemo({super.key});

  @override
  State<ClassificationDemo> createState() => _ClassificationDemoState();
}

class _ClassificationDemoState extends State<ClassificationDemo> {
  final picker = ImagePicker();
  String result = "";
  var pickedFile ;
  getLabeling(String option) async {
    if (option=="gallary")
    {
          pickedFile = await picker.pickImage(source: ImageSource.gallery);
    }
    else{
          pickedFile = await picker.pickImage(source: ImageSource.camera);
    }

    if (pickedFile!=null)
    {
       final input = InputImage.fromFilePath(pickedFile.path);
       final ImageLabeler labeler = GoogleMlKit.vision.imageLabeler();
       final List labels = await labeler.processImage(input);

       setState(() {
        //  result = "";
         for (ImageLabel label in labels)
         {
            result += label.label;
         }
         labeler.close();
       });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Classification"),
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                getLabeling("camera");
              },
              onLongPress: (){
                getLabeling("gallary");
              },
              child: Container(
                child: Column(
                  children: [
                    Icon(Icons.photo,size: 100,)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            (result.isNotEmpty)
                ? Text(
                    "Result = $result",
                    style: TextStyle(fontSize: 25),
                  )
                : Text("...")
          ],
        ),
      ),
    );
  }
}
