import 'package:flutter/material.dart';
import './scan_qr_code.dart';
import './generate_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
        title: 'QR GEN & SCAN',
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QR GEN & SCAN'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScanQRCode()));
                  });
                },
                child: Text('Scan QR Code')),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GenerateQRCode()));
                  });
                },
                child: Text('Generate QR Code')),
          ]),
        )
    );
  }
}
