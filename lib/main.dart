import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main () {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: "İLAÇ YAN ETKİ",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.greenAccent),
    home: App(),
  );
}}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Hata çıktı" + snapshot.error.toString()),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return HomePage();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}