import 'dart:io';

import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';



class BarcodeScannerApp extends StatefulWidget {
  const BarcodeScannerApp({super.key});

  @override
  State<BarcodeScannerApp> createState() => _BarcodeScannerAppState();
}

class _BarcodeScannerAppState extends State<BarcodeScannerApp> {
  // Result``
  String result = "";

  Future<void> scanBarCode() async
  {
       try
       {
          ScanResult result1 =await BarcodeScanner.scan(
            options: const  ScanOptions(useCamera: -1),
            // default camera 
          );
          setState(() {
            result = result1.rawContent;
          });
       }
       catch (e)
       {
          setState(() {
          result = "Camera not Working !!!";
        });       
       }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BARCODE SCANNER APP",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Container(
        child: Center(
          child: Column
          (children: [
              Text(
                "Output : $result"
              ),
              ElevatedButton(onPressed: scanBarCode, child: Text("Scan Bar Code"))
          ],),
        ),
      )
    );
  }
}
