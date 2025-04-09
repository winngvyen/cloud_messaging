import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'please run `flutterfire configure` and try again.',
      );
    }
switch (defaultTargetPlatform) {
  case TargetPlatform.android:
    return android;
  case TargetPlatform.iOS:
  case TargetPlatform.macOS:
  case TargetPlatform.windows:
  case TargetPlatform.linux:
  case TargetPlatform.fuchsia:
    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
}
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBw3k6cyCgLQGZbrO6FslZMP5Mw_U95xCU',
    appId: '1:442871541366:android:dcfc810dbf129ab786f957',
    messagingSenderId: '442871541366',
    projectId: 'cloud-messaging-b1b1a',
    storageBucket: 'cloud-messaging-b1b1a.firebasestorage.app',
  );
}