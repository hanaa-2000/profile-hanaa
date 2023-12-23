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
    apiKey: 'AIzaSyCv4Ktp2Zsbvr1ZFj36LRQEpyGHOhxXyZw',
    appId: '1:707319656374:web:9259de357001dda3e9db17',
    messagingSenderId: '707319656374',
    projectId: 'shopping-34765',
    authDomain: 'shopping-34765.firebaseapp.com',
    storageBucket: 'shopping-34765.appspot.com',
    measurementId: 'G-4PZ89E1G01',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCIMnzRFxYhmXKYvv9nqwF42Z8OLJi8lWo',
    appId: '1:707319656374:android:031f5ce23ddc65c1e9db17',
    messagingSenderId: '707319656374',
    projectId: 'shopping-34765',
    storageBucket: 'shopping-34765.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhUmUhlr-worA7yoHHACKtSBOJt6UEQpg',
    appId: '1:707319656374:ios:0464def3939753b4e9db17',
    messagingSenderId: '707319656374',
    projectId: 'shopping-34765',
    storageBucket: 'shopping-34765.appspot.com',
    iosBundleId: 'com.example.emartApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAhUmUhlr-worA7yoHHACKtSBOJt6UEQpg',
    appId: '1:707319656374:ios:0464def3939753b4e9db17',
    messagingSenderId: '707319656374',
    projectId: 'shopping-34765',
    storageBucket: 'shopping-34765.appspot.com',
    iosBundleId: 'com.example.emartApp',
  );
}
