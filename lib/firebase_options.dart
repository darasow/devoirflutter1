// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyB4SGf1sUkGLsxH6NmTm6MPNQ5CP9xm-bg',
    appId: '1:984676261970:web:13221d20baacead377ff8b',
    messagingSenderId: '984676261970',
    projectId: 'darasow-c6fb2',
    authDomain: 'darasow-c6fb2.firebaseapp.com',
    storageBucket: 'darasow-c6fb2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbYiZxUEpN0OznNbVPvlPzAEqQAWga6aw',
    appId: '1:984676261970:android:416bad84bdae440877ff8b',
    messagingSenderId: '984676261970',
    projectId: 'darasow-c6fb2',
    storageBucket: 'darasow-c6fb2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOK4vaUmTlyWqOdbrkCtBkEmox5UXr_xg',
    appId: '1:984676261970:ios:afb436c2fde4345977ff8b',
    messagingSenderId: '984676261970',
    projectId: 'darasow-c6fb2',
    storageBucket: 'darasow-c6fb2.appspot.com',
    iosBundleId: 'com.example.apptuto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOK4vaUmTlyWqOdbrkCtBkEmox5UXr_xg',
    appId: '1:984676261970:ios:afb436c2fde4345977ff8b',
    messagingSenderId: '984676261970',
    projectId: 'darasow-c6fb2',
    storageBucket: 'darasow-c6fb2.appspot.com',
    iosBundleId: 'com.example.apptuto',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB4SGf1sUkGLsxH6NmTm6MPNQ5CP9xm-bg',
    appId: '1:984676261970:web:7f27b3b3f839d77877ff8b',
    messagingSenderId: '984676261970',
    projectId: 'darasow-c6fb2',
    authDomain: 'darasow-c6fb2.firebaseapp.com',
    storageBucket: 'darasow-c6fb2.appspot.com',
  );
}
