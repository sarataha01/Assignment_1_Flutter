import 'package:flutter/material.dart';
import 'package:testing/screens/widgets/list_tile.dart';
import 'package:testing/screens/widgets/personal_profile.dart';

import '../entities/contact.dart';

class ContactListScreen extends StatelessWidget {
  ContactListScreen({super.key});

  final List<Contact> mockContacts = Contact.getMockData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.settings_outlined,
          size: 30,
        ),
        actions: const [
          Icon(
            Icons.person_add_outlined,
            size: 30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PersonalProfile(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Contact",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            for (Contact contact in mockContacts) ...[
              ContactTile(contact: contact),
              // const SizedBox(
              //   height: 10,
              // )
            ],
          ],
        ),
      ),
    );
  }
}
