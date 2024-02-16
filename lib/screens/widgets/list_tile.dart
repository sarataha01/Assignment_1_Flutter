import 'package:flutter/material.dart';

import '../../entities/contact.dart';

class ContactTile extends StatelessWidget {
  final Contact contact;
  const ContactTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(contact.imageUrl),
        ),
        title: Text(
          contact.name,
          style: TextStyle(
            fontSize: 20,
            //fontWeight: FontWeight.w500,
            color: contact.hasMissedCall ? Colors.red : Colors.white,
          ),
        ),
        subtitle: const Text(
          "Mobile",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        //isThreeLine: true,
        trailing: Column(
          children: [
            Icon(
              contact.icon,
              color: contact.hasMissedCall ? Colors.red : Colors.white,
            ),
            Text(
              contact.time,
              style: const TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
