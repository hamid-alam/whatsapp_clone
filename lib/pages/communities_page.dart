import 'package:flutter/material.dart';

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({super.key});

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Image.asset(
              'assets/images/photo.jpg',
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Introducing communities',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            alignment: Alignment.center,
            child: const Text(
              'Easily orgainise your related groups and send annoucements. Now, your communities, like neighbourhood or schools, can have their own space.',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Container(
              width: 300,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0XFF075E54),
                  borderRadius: BorderRadius.circular(21.0)),
              child: const Text(
                'Start your community',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ));
  }
}
