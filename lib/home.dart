import 'package:first_app/chat.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
  
}




class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255,235,238,
238,
        ), // WhatsApp green
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 17, 221, 17),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
            ),
            PopupMenuButton<String>(
            onSelected: (value) {},
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'new_group', child: Text('New group')),
              PopupMenuItem(value: 'settings', child: Text('Settings')),
            
            ],
          
          
          ),  
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
          ),
        ),
      ),

      body: const Center(
        child: Text(
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 17, 221, 17),
          ),
          'WELCOME TO WHATSAPP',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewChatScreen()),
          );
        },
        backgroundColor: const Color(0xFF25D366),
        child: const Icon(Icons.chat),
      ),
    

      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 235, 238, 238),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
                        IconButton(
              icon: const Icon(Icons.update),
              onPressed: () {},
            ),
            
            IconButton(
              icon: const Icon(Icons.group),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {},
            ),

          ],
        ),
      ),
    );
  }
}
