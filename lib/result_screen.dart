import 'package:flutter/material.dart';
import 'package:qr_scanner/qr_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                QrImageView(data:'Hey', version: QrVersions.auto, size: 150, gapless: false),
                Text(
                  "Scanned result",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Result",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 48,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text(
                      "Copy",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
