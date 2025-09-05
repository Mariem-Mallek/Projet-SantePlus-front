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
    apiKey: 'AIzaSyDfMKRqWYg5bzA9EwgUOT88YyK8zAdPEEc',
    appId: '1:456784075433:web:45565268fb23e4603ba7b8',
    messagingSenderId: '456784075433',
    projectId: 'santeplus-5dbf0',
    authDomain: 'santeplus-5dbf0.firebaseapp.com',
    storageBucket: 'santeplus-5dbf0.firebasestorage.app',
    measurementId: 'G-9Q8ZC7N98P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxKzJ2uw5nEelwRXdOGYimie4fSBf4hm8',
    appId: '1:456784075433:android:0c4b81fb7bcffdd43ba7b8',
    messagingSenderId: '456784075433',
    projectId: 'santeplus-5dbf0',
    storageBucket: 'santeplus-5dbf0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaPvYHmyQUnZd5VoKO63g6AUjILwEmEjA',
    appId: '1:456784075433:ios:f79e6cbd7bf3c62c3ba7b8',
    messagingSenderId: '456784075433',
    projectId: 'santeplus-5dbf0',
    storageBucket: 'santeplus-5dbf0.firebasestorage.app',
    iosBundleId: 'com.example.santepluspatient',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaPvYHmyQUnZd5VoKO63g6AUjILwEmEjA',
    appId: '1:456784075433:ios:f79e6cbd7bf3c62c3ba7b8',
    messagingSenderId: '456784075433',
    projectId: 'santeplus-5dbf0',
    storageBucket: 'santeplus-5dbf0.firebasestorage.app',
    iosBundleId: 'com.example.santepluspatient',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDfMKRqWYg5bzA9EwgUOT88YyK8zAdPEEc',
    appId: '1:456784075433:web:3d4b36c6b50b658a3ba7b8',
    messagingSenderId: '456784075433',
    projectId: 'santeplus-5dbf0',
    authDomain: 'santeplus-5dbf0.firebaseapp.com',
    storageBucket: 'santeplus-5dbf0.firebasestorage.app',
    measurementId: 'G-70GL7WCQQN',
  );
}
