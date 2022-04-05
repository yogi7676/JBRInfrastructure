import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jbr_infrastructure/app/models/profilemodel.dart';

class ProfileController extends GetxController {
  static ProfileController instance = Get.find();

  List<ProfileModel> profileTabs = [
    ProfileModel('Contact us', 'Let us help you', Icons.chat, const Scaffold()),
    ProfileModel('T&C', 'Company Policies', Icons.assignment, const Scaffold()),
    ProfileModel('FAQs', 'Quick Answers', Icons.sms_failed, const Scaffold()),
    ProfileModel('Logout', 'Logout', Icons.logout, () {}),
  ];
}
