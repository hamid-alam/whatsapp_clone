import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0XFF075E54),
              child: Icon(
                Icons.link,
              ),
            ),
            title: Text(
              'Create a call link',
            ),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[200],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.call_outlined),
      ),
    );
  }
}
