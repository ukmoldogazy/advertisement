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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC15t627N1OT2oQwGbOt_gIuQh7YXAlZS0',
    appId: '1:783984158996:web:d572c86ebf1c40ca7ffa01',
    messagingSenderId: '783984158996',
    projectId: 'ad-advertisement',
    authDomain: 'ad-advertisement.firebaseapp.com',
    storageBucket: 'ad-advertisement.appspot.com',
    measurementId: 'G-P26S46NK12',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxeBqGgakGm5HHhqQGDvOgAKekmGjxEhQ',
    appId: '1:783984158996:android:298b81c6e87223d77ffa01',
    messagingSenderId: '783984158996',
    projectId: 'ad-advertisement',
    storageBucket: 'ad-advertisement.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCweAE5ATyybGzK2NcAVoXn0nHS3gs7EQI',
    appId: '1:783984158996:ios:ff390301d459608f7ffa01',
    messagingSenderId: '783984158996',
    projectId: 'ad-advertisement',
    storageBucket: 'ad-advertisement.appspot.com',
    iosClientId: '783984158996-7o77js1smq9s18m5fvhqijrnjkn72ek1.apps.googleusercontent.com',
    iosBundleId: 'com.example.advertisement',
  );
}