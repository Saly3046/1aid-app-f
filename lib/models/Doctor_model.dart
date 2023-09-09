import 'dart:ffi';
import 'dart:js_interop';
import 'dart:ui';

class DoctorModel {
  final String? id;
  final String fullname;
  final String email;
  final String phoneNo;
  final String speciality;
  final Float rating;

  const DoctorModel({
    this.id,
    required this.fullname,
    required this.email,
    required this.phoneNo,
    required this.speciality,
    required this.rating,
  });

  toJson() {
    return {
      "FullName": fullname,
      "Email": email,
      "Phone": phoneNo,
      "Speciality": speciality,
      "Rating": rating,
    };
  }
}
