import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS || Platform.isMacOS) {
      return const FirebaseOptions(
        appId: '1:580016931555:ios:76817e2516ed09fb95bbd6',
        apiKey: 'AIzaSyAFxziWlJhRpfdwo7AOxhsJmeA1NaRNdsU',
        projectId: 'todoappyt-887a4',
        messagingSenderId: '580016931555',
        iosBundleId: 'io.flutter.plugins.firebase.firestore.example',
        iosClientId:
            '580016931555-74jrgolslmapumlh66ts8d8m3eouhd6d.apps.googleusercontent.com',
        androidClientId: '',
        storageBucket: 'todoappyt-887a4.appspot.com',
        databaseURL: 'https://todoappyt-887a4-default-rtdb.firebaseio.com/',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:580016931555:android:08f4acb42fe4897495bbd6',
        apiKey: 'AIzaSyAFxziWlJhRpfdwo7AOxhsJmeA1NaRNdsU',
        projectId: 'todoappyt-887a4',
        messagingSenderId: '580016931555',
      );
    }
  }
}
