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
    apiKey: 'AIzaSyAMGp1JtjlwWKhpZQha_IGFgiOjNnWz5v8',
    appId: '1:433805424009:web:b318a643e716c448231d58',
    messagingSenderId: '433805424009',
    projectId: 'feed-me-app-b1835',
    authDomain: 'feed-me-app-b1835.firebaseapp.com',
    storageBucket: 'feed-me-app-b1835.appspot.com',
    measurementId: 'G-PNYEXLDXGR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1v5n3ZQir5Yus1-BPd8cZdWU49Nix-Ns',
    appId: '1:433805424009:android:69870e0539724f5e231d58',
    messagingSenderId: '433805424009',
    projectId: 'feed-me-app-b1835',
    storageBucket: 'feed-me-app-b1835.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDILgBMIdikKdtd07_W8x3C5ZFgSY7veFw',
    appId: '1:433805424009:ios:98138ebac99ea16b231d58',
    messagingSenderId: '433805424009',
    projectId: 'feed-me-app-b1835',
    storageBucket: 'feed-me-app-b1835.appspot.com',
    iosClientId: '433805424009-dlj8gn3ke1ul2o62hgrv2g0jc1cnjgsv.apps.googleusercontent.com',
    iosBundleId: 'com.example.atharvPatilApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDILgBMIdikKdtd07_W8x3C5ZFgSY7veFw',
    appId: '1:433805424009:ios:98138ebac99ea16b231d58',
    messagingSenderId: '433805424009',
    projectId: 'feed-me-app-b1835',
    storageBucket: 'feed-me-app-b1835.appspot.com',
    iosClientId: '433805424009-dlj8gn3ke1ul2o62hgrv2g0jc1cnjgsv.apps.googleusercontent.com',
    iosBundleId: 'com.example.atharvPatilApp',
  );
}
