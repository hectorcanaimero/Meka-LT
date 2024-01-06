import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZQUQ65vngYX7_MWDqYDZ5utNn9yGkiWo",
            authDomain: "meka-app.firebaseapp.com",
            projectId: "meka-app",
            storageBucket: "meka-app.appspot.com",
            messagingSenderId: "882572463657",
            appId: "1:882572463657:web:96f5f79d52d0ef1ae69638",
            measurementId: "G-JG99NW4H1J"));
  } else {
    await Firebase.initializeApp();
  }
}
