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
    apiKey: 'AIzaSyBc0ogjs-VBA9ErJ_vDz6zrqUCYfAzU3b8',
    appId: '1:66668357084:web:6a0dc297e6304119ba9b19',
    messagingSenderId: '66668357084',
    projectId: 'fir-demo-30f60',
    authDomain: 'fir-demo-30f60.firebaseapp.com',
    storageBucket: 'fir-demo-30f60.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBAQeMJnoaPdMHIGpSTkTVhpE4GV_RIME',
    appId: '1:66668357084:android:d871a4e0e8aa8f95ba9b19',
    messagingSenderId: '66668357084',
    projectId: 'fir-demo-30f60',
    storageBucket: 'fir-demo-30f60.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6issnqr9ECsBx_0NrYFQeiFS3j4HNnN4',
    appId: '1:66668357084:ios:ae399ef85059ec89ba9b19',
    messagingSenderId: '66668357084',
    projectId: 'fir-demo-30f60',
    storageBucket: 'fir-demo-30f60.appspot.com',
    iosBundleId: 'com.example.firebaseDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6issnqr9ECsBx_0NrYFQeiFS3j4HNnN4',
    appId: '1:66668357084:ios:ae399ef85059ec89ba9b19',
    messagingSenderId: '66668357084',
    projectId: 'fir-demo-30f60',
    storageBucket: 'fir-demo-30f60.appspot.com',
    iosBundleId: 'com.example.firebaseDemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBc0ogjs-VBA9ErJ_vDz6zrqUCYfAzU3b8',
    appId: '1:66668357084:web:5dd413b4ab00ac31ba9b19',
    messagingSenderId: '66668357084',
    projectId: 'fir-demo-30f60',
    authDomain: 'fir-demo-30f60.firebaseapp.com',
    storageBucket: 'fir-demo-30f60.appspot.com',
  );
}