import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://cdn.statusqueen.com/dpimages/thumbnail/Attitude_boy_dp_-3106.jpg'),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.greenAccent[700],
                      radius: 10,
                      child: const Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            title: const Text(
              'My status',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('Tap to add status update'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent updates'),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
            title: Text('Rihanna'),
            subtitle: Text('34 minutes ago'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.jpg?s=612x612&w=is&k=20&c=acQ7V92QEYwAs6ojhpTSCRR3m8eCePNiJihHcu4jjoU='),
            ),
            title: Text('John wick'),
            subtitle: Text('50 minutes ago'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
            title: Text('Jessica'),
            subtitle: Text('57 minutes ago'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/947639/pexels-photo-947639.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
            title: Text('Tom'),
            subtitle: Text('2 hours ago'),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 45,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              elevation: 7,
              onPressed: () {},
              child: const Icon(
                Icons.edit,
                color: Colors.blueGrey,
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          FloatingActionButton(
            elevation: 7,
            onPressed: () {},
            child: const Icon(Icons.camera_alt),
          )
        ],
      ),
    );
  }
}
