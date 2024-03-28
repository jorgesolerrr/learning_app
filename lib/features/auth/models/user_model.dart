// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String lms;
  String userid;
  String userpassword;
  String useremail;
  String? userrole;
  String? fullname;

  UserModel({
    this.lms = "",
    this.userid = "",
    this.userpassword = "",
    this.useremail = "",
    this.userrole = "",
    this.fullname = "",
  });
  

  UserModel copyWith({
    String? lms,
    String? userid,
    String? userpassword,
    String? useremail,
    String? userrole,
    String? fullname,
  }) {
    return UserModel(
      lms: lms ?? this.lms,
      userid: userid ?? this.userid,
      userpassword: userpassword ?? this.userpassword,
      useremail: useremail ?? this.useremail,
      userrole: userrole ?? this.userrole,
      fullname: fullname ?? this.fullname,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lms': lms,
      'userid': userid,
      'userpassword': userpassword,
      'useremail': useremail,
      'userrole': userrole,
      'fullname': fullname,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      lms: map['lms'] as String,
      userid: map['userid'] as String,
      userpassword: map['userpassword'] as String,
      useremail: map['useremail'] as String,
      userrole: map['userrole'] != null ? map['userrole'] as String : null,
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(lms: $lms, userid: $userid, userpassword: $userpassword, useremail: $useremail, userrole: $userrole, fullname: $fullname)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.lms == lms &&
      other.userid == userid &&
      other.userpassword == userpassword &&
      other.useremail == useremail &&
      other.userrole == userrole &&
      other.fullname == fullname;
  }

  @override
  int get hashCode {
    return lms.hashCode ^
      userid.hashCode ^
      userpassword.hashCode ^
      useremail.hashCode ^
      userrole.hashCode ^
      fullname.hashCode;
  }
}
