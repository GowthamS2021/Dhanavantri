import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dhanvantri/Models/User.dart';

class DataBaseService {
  String? uid = '';

  DataBaseService();

  void setuid(val) {
    uid = val;
  }

  final CollectionReference detailsDb =
      FirebaseFirestore.instance.collection('User details');

  Future<bool> updateUserData(String name, String email, bool isAdmin,
      String phonenumber, String medicalConditions) async {
    return await detailsDb
        .doc(uid)
        .set({
          'name': name,
          'email': email,
          'phoneNum': phonenumber,
          'isAdmin': isAdmin,
          'medicalConditions': medicalConditions,
        })
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<Userdetails?> getdata() async {
    if (uid == '') return null;
    await detailsDb.doc(uid).get().then((DocumentSnapshot snapshot) {
      if (snapshot.exists) {
        Map<String, dynamic> data = snapshot.data()! as Map<String, dynamic>;
        //print(data['name']);
        return Userdetails(
            uid: uid,
            name: data['name'],
            medical: data['medicalConditions'],
            email: data['email'],
            phone: data['phoneNum']);
      }
    });
    return null;
  }

  Userdetails? _UserdetailsFromsnapshots(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data()! as Map<String, dynamic>;
    return Userdetails(
        uid: uid,
        name: data['name'],
        medical: data['medicalConditions'],
        email: data['email'],
        phone: data['phoneNum']);
  }

  Stream<Userdetails?> get userData {
    return detailsDb.doc(uid).snapshots().map(_UserdetailsFromsnapshots);
  }
}
