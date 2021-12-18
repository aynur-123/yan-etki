import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String result = "";

  final _flashOnController = TextEditingController(text: "Flash on");
  final _flashOffConroller = TextEditingController(text: "Flash off");
  final _cancelController = TextEditingController(text: "Cancel");

  int _selectedCamera = -1;
  bool _autoEnableFlash = false;
  double _aspectToTolerance = 0;
  bool _useAutoFocus = true;


  static final _possibleFormats = BarcodeFormat.values.toList()..removeWhere((e) => e == BarcodeFormat.unknown);
  List<BarcodeFormat> selectedFormats = [..._possibleFormats];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlaç Barkod Okut"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("Kamera Erişimine İzin Ver"),
              onPressed: () => _scanQR(context),
            ),
            Text(result)
          ],
        ),
      ),
    );
  }

  Future _scanQR(BuildContext context) async {
    try {
      ScanOptions options = ScanOptions(
        strings: {
          "cancel": _cancelController.text,
          "flash_on": _flashOnController.text,
          "flash_off": _flashOffConroller.text
        },
        restrictFormat: selectedFormats,
        useCamera: _selectedCamera,
        autoEnableFlash: _autoEnableFlash,
        android: AndroidOptions(
          aspectTolerance: _aspectToTolerance,
          useAutoFocus: _useAutoFocus,
        )
      );

      ScanResult resul = await BarcodeScanner.scan(options: options);
      Map<String, dynamic> ilac = await getIlac(resul.rawContent);
      setState(() {
        result = ilac.toString();
      });
    } catch (e) {
      setState(() {
        result = "Unknown Error $e\n";
      });
    }
  }
  
  Future<Map<String, dynamic>> getIlac(String docID) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot doc = await firestore.collection("ilaclar").doc(docID).get();
    return doc.data() as Map<String, dynamic>;
  }
}
