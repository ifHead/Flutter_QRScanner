import 'package:flutter/material.dart';
import 'package:qr_scanner/qr_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

const bgColor = Color(0xfffafafa);

class QRScanner extends StatelessWidget {
  const QRScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
                      "QR Scanner",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
      ),
      body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Place the QR code in the area",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Scanning will be started automatically",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ]
                ),
              ),
              Expanded(
                flex: 4,
                child: MobileScanner(
                  allowDuplicates: true,
                  onDetect: (barcode, args){
                    
                  },
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Developed by IfHead",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
