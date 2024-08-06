import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'Your API Key',
    appId: '1:460285300044:web:032ee10480bf51573413e9',
    messagingSenderId: '460285300044',
    projectId: 'authentication-597d1',
    authDomain: 'authentication-597d1.firebaseapp.com',
    storageBucket: 'authentication-597d1.appspot.com',
    measurementId: 'G-PX036SRDHX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'Your API Key',
    appId: '1:460285300044:android:a027bdc0cef983123413e9',
    messagingSenderId: '460285300044',
    projectId: 'authentication-597d1',
    storageBucket: 'authentication-597d1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'Your API Key',
    appId: '1:460285300044:ios:96a23301b9496d3a3413e9',
    messagingSenderId: '460285300044',
    projectId: 'authentication-597d1',
    storageBucket: 'authentication-597d1.appspot.com',
    iosBundleId: 'com.example.loginApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'Your API Key',
    appId: '1:460285300044:ios:ef33e77c8f922a9b3413e9',
    messagingSenderId: '460285300044',
    projectId: 'authentication-597d1',
    storageBucket: 'authentication-597d1.appspot.com',
    iosBundleId: 'com.example.loginApp.RunnerTests',
  );
}
