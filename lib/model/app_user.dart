// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AppUser {
  final String uid;
  final String name;
  final String email;
  final int timestamp;
  AppUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.timestamp,
  });

 
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'email': email,
      'timestamp': timestamp,
    };
  }

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      uid: map['uid'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      timestamp: map['timestamp'] as int,
    );
  }

  
}
