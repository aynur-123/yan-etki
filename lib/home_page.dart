import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yan_etki/kisisel_bilgiler.dart';

import 'ElleBarkod.dart';
import 'ScanScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'YAN ETKİ BİLDİRİM FORMU',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        icon: Icon(Icons.camera_alt),
                        color: Colors.black,
                        iconSize: 100,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScanScreen()),
                        ),
                      ),
                      Text(
                        'BARKOD OKUT',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        icon: Icon(Icons.text_snippet_sharp),
                        color: Colors.black,
                        iconSize: 100,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ElleBarkod()),
                        ),
                      ),
                      Text(
                        'ELLE BARKOD\nSORGULAMA',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        icon: Icon(Icons.person),
                        color: Colors.black,
                        iconSize: 100,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context)=> KisiselBilgiler()));
                        },
                      ),
                      Text(
                        'KİŞİSEL BİLGİLER',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.black,
                        size: 100,
                      ),
                      Text(
                        'YAN ETKİ BİLDİR',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
