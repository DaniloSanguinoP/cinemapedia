import 'package:cinemapedia/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseService {
  static late FirebaseApp firebaseApp;
  static late FirebaseStorage storage;
  static late FirebaseFirestore db;

  static init() async {
    try {
      firebaseApp = await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);

      storage = FirebaseStorage.instanceFor(app: firebaseApp);
      db = FirebaseFirestore.instanceFor(app: firebaseApp);
    } catch (e) {}
  }
}