import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({super.key});

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

// state inialization
  @override
  void initState() {
    super.initState();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   controller?.dispose();
  //   super.dispose();
  // }

  void qrCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((data) {
      setState(() {
        result = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR SCANNER"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: QRView(
                key: qrKey,
                onQRViewCreated: qrCreated,
              ),
            ),
            Expanded(child: Text("Output : ${(result != null) ? result!.code : "Scan QR"}"))
          ],
        ),
      ),
    );
  }
}
