// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCNJfn9jv5IdjgWOgh0uneYtdPRL9dLmSI',
    appId: '1:166995457984:web:e5563e04383982c64a3a25',
    messagingSenderId: '166995457984',
    projectId: 'flutter-firestore-7ef00',
    authDomain: 'flutter-firestore-7ef00.firebaseapp.com',
    storageBucket: 'flutter-firestore-7ef00.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnEDW9E7odNJgglWLSm3orzjVDjJXG6ik',
    appId: '1:166995457984:android:da81a434bec493a44a3a25',
    messagingSenderId: '166995457984',
    projectId: 'flutter-firestore-7ef00',
    storageBucket: 'flutter-firestore-7ef00.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1budPPKF1Y7z5rJbMvkdLZSQkIZv8Ipo',
    appId: '1:166995457984:ios:de7cf79ce1a7f7ca4a3a25',
    messagingSenderId: '166995457984',
    projectId: 'flutter-firestore-7ef00',
    storageBucket: 'flutter-firestore-7ef00.appspot.com',
    iosClientId: '166995457984-8jjlvspgl5tfkck0aj3ug6u4f3868jan.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirestore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1budPPKF1Y7z5rJbMvkdLZSQkIZv8Ipo',
    appId: '1:166995457984:ios:de7cf79ce1a7f7ca4a3a25',
    messagingSenderId: '166995457984',
    projectId: 'flutter-firestore-7ef00',
    storageBucket: 'flutter-firestore-7ef00.appspot.com',
    iosClientId: '166995457984-8jjlvspgl5tfkck0aj3ug6u4f3868jan.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirestore',
  );
}
