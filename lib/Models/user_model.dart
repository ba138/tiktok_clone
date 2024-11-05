import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? name;
  String? uid;
  String? image;
  String? email;
  String? youtube;
  String? facebook;
  String? twitter;
  String? instagram;
  UserModel({
    required this.name,
    required this.uid,
    required this.image,
    required this.email,
    required this.youtube,
    required this.facebook,
    required this.twitter,
    required this.instagram,
  });
  Map<String, dynamic> tojson() => {
        "name": name,
        'uid': uid,
        'image': image,
        'email': email,
        'youtube': youtube,
        'facebook': facebook,
        'twitter': twitter,
        'instagram': instagram,
      };
  static UserModel fromSnap(DocumentSnapshot snapshot) {
    var dataSnapshot = snapshot.data() as Map<String, dynamic>;
    return UserModel(
      name: dataSnapshot['name'],
      uid: dataSnapshot['uid'],
      image: dataSnapshot['image'],
      email: dataSnapshot['email'],
      youtube: dataSnapshot['youtube'],
      facebook: dataSnapshot['facebook'],
      twitter: dataSnapshot['twitter'],
      instagram: dataSnapshot['instagram'],
    );
  }
}
