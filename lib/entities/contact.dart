import 'package:flutter/material.dart';
import 'package:testing/utils/general_utils.dart';

class Contact {
  final String imageUrl;
  final String name;
  final String time;
  final IconData icon;
  final bool hasMissedCall;

  Contact(
      {required this.imageUrl,
      required this.time,
      required this.name,
      required this.icon,
      this.hasMissedCall = false});

  static List<Contact> getMockData() {
    return [
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "06:12",
        name: "Aiden Adams",
        icon: Icons.phone_outlined,
      ),
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "10:15",
        name: "Sophia Robinson",
        icon: Icons.phone_outlined,
      ),
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "12:26",
        name: "Liam Murphy",
        icon: Icons.phone_missed_outlined,
        hasMissedCall: true,
      ),
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "03:12",
        name: "Harper Miller",
        icon: Icons.phone_outlined,
      ),
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "08:56",
        name: "Benjamin Clark",
        icon: Icons.phone_outlined,
      ),
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "05:17",
        name: "Scarlet Lewis",
        icon: Icons.phone_outlined,
      ),
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "09:46",
        name: "Samuel Robinson",
        icon: Icons.phone_outlined,
      ),
      Contact(
        imageUrl: GeneralUtils.getUniqueAvatar(),
        time: "02:18",
        name: "Nathan Drake",
        icon: Icons.phone_outlined,
      ),
    ];
  }
}
