import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ElleBarkod extends StatefulWidget {
  @override
  _ElleBarkodState createState() => _ElleBarkodState();
}

class _ElleBarkodState extends State<ElleBarkod> {
  String barkod = "";

  Map<String, dynamic> ilac = {};

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elle Barkod Okutma"),
      ),
      body: Column(
        children: [
          Center(
            child: Form(
              key: formKey,
              child: TextFormField(
                onSaved: (String? text) => barkod = text!,
              ),
            ),
          ),
          TextButton(
            child: Text("Sorgula"),
            onPressed: () {
              formKey.currentState!.save();
              setState(() async{
                ilac = await getIlac(barkod);
              });
            },
          ),
          Text(ilac.toString())
        ],
      ),
    );
  }

  Future<Map<String, dynamic>> getIlac(String docID) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot doc = await firestore.collection("ilaclar").doc(docID).get();
    return doc.data() as Map<String, dynamic>;
  }
}
