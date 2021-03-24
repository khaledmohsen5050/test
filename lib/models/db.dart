import 'package:cloud_firestore/cloud_firestore.dart';
/*import 'package:firebase_core/firebase_core.dart';
import 'package:graduationp/screens/Addpost.dart';*/

class Dbhandler {
  static Dbhandler _instance = Dbhandler._private();
  Dbhandler._private();
  static Dbhandler get instance => _instance;
  Future<void> addProduct(String name, String email, String mobile) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    users.add({
      'name': name,
      'email': email,
      'mobilenumber': mobile,
    });
  }

  Future<void> Addpost(String des, String title, String location, String date) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('clothes');
    users.add({
      'describtion': des,
      'image': title,
      'location': location,
      'date': date,
    });
  }
}
