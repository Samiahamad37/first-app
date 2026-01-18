import 'package:flutter/material.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      "Bunny ❤️",
      "Mom",
      "Dad",
      "CSM Group",
      "Flutter Devs",
      "Ardhi University",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        title: const Text("Select contact"),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF25D366),
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(contacts[index]),
            onTap: () {
              // Start conversation
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
