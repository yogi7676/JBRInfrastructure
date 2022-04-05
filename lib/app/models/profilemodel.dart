import 'package:flutter/material.dart';

class ProfileModel {
  String title;
  String description;
  IconData icon;
  dynamic destination;

  ProfileModel(
    this.title,
    this.description,
    this.icon,
    this.destination,
  );
}
