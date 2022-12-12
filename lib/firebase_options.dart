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
    apiKey: 'AIzaSyAXw1vtz_oRm4ah6TOG7llwIySLH0ihlXc',
    appId: '1:254307902200:web:0a3ec437bc0755f2be510d',
    messagingSenderId: '254307902200',
    projectId: 'nba-app-cf691',
    authDomain: 'nba-app-cf691.firebaseapp.com',
    storageBucket: 'nba-app-cf691.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHO48QYDcNU1acM_5etiMFdCIaTfA_KvA',
    appId: '1:254307902200:android:20f64c81599a39e1be510d',
    messagingSenderId: '254307902200',
    projectId: 'nba-app-cf691',
    storageBucket: 'nba-app-cf691.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0gx1DtQlw93_innqTOcqTAmVS2vAGhHg',
    appId: '1:254307902200:ios:1c030230f3f6d27ebe510d',
    messagingSenderId: '254307902200',
    projectId: 'nba-app-cf691',
    storageBucket: 'nba-app-cf691.appspot.com',
    iosClientId: '254307902200-ddnkd8901t3hfdif605t2hj7sdtbmhi8.apps.googleusercontent.com',
    iosBundleId: 'com.example.nbaapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0gx1DtQlw93_innqTOcqTAmVS2vAGhHg',
    appId: '1:254307902200:ios:1c030230f3f6d27ebe510d',
    messagingSenderId: '254307902200',
    projectId: 'nba-app-cf691',
    storageBucket: 'nba-app-cf691.appspot.com',
    iosClientId: '254307902200-ddnkd8901t3hfdif605t2hj7sdtbmhi8.apps.googleusercontent.com',
    iosBundleId: 'com.example.nbaapp',
  );
}
