import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/user.dart';

class FirestoreService {
  Future<bool?> addUser({required User user}) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      await users.doc(user.email).set({
        'name': user.name,
        'surname': user.surname,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<User?> getUser(String email) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      final snapshot = await users.doc(email).get();
      final data = snapshot.data() as Map<String, dynamic>;
      User user = User();
      user.email = email;
      user.name = data['name'];
      user.surname = data['surname'];
      return user;
    } catch (e) {
      return null;
    }
  }
}
