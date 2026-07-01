import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDecN3TGV6vDJPRbswbOKvrJ9dt7VkZUE',
    appId: '1:279734428004:android:ccd69b013d25e835949a71',
    messagingSenderId: '279734428004',
    projectId: 'qunzo-app',                    // تغییر دادیم
    storageBucket: 'qunzo-app.firebasestorage.app',  // تغییر دادیم
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgFfu2VI5eHHsXsy_FlI0bXHy3-hzp6uo',
    appId: '1:279734428004:ios:f06064424e537a53949a71',
    messagingSenderId: '279734428004',
    projectId: 'qunzo-app',                    // تغییر دادیم
    storageBucket: 'qunzo-app.firebasestorage.app',  // تغییر دادیم
    iosBundleId: 'com.qunzo.user',
  );

  static const FirebaseOptions macos = ios;
}