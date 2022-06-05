import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firestore/service/database_service.dart';
import 'package:flutter_firestore/view/home_page.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
      home: FlutterFirestore(),
    ),
  );
}

class FlutterFirestore extends StatelessWidget {
  const FlutterFirestore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(service: FirestoreService());
  }
}
