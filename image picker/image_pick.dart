import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({super.key});

  @override
  State<ImagePick> createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  File? _image;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final PickedFile = await picker.pickImage(source: ImageSource.camera);

    if (PickedFile != null) {
      setState(() {
        _image = File(PickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera"),
      ),
      body: Center(
        child: _image == null ? Icon(Icons.image) : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
