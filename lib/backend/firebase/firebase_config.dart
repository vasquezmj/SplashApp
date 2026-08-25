import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfxFeMJbzYDV60NlxpdyPeXAvryDw3DV8",
            authDomain: "splash-app-dtxol3.firebaseapp.com",
            projectId: "splash-app-dtxol3",
            storageBucket: "splash-app-dtxol3.firebasestorage.app",
            messagingSenderId: "106105838624",
            appId: "1:106105838624:web:ca396bd793cbcbd4ceb045"));
  } else {
    await Firebase.initializeApp();
  }
}
