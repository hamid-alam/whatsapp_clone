import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls_page.dart';
import 'package:whatsapp_clone/pages/chats_page.dart';
import 'package:whatsapp_clone/pages/communities_page.dart';
import 'package:whatsapp_clone/pages/status_page.dart';
import 'package:whatsapp_clone/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Color(0XFF075E54)),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Color(0XFF075E54)),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      home: const SplashPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          centerTitle: false,
          bottom:
              const TabBar(indicatorColor: Colors.white, indicatorWeight: 2, tabs: [
            Tab(icon: Icon(Icons.groups_3)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ]),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
            PopupMenuButton(
                itemBuilder: (context) => [
                      const PopupMenuItem(value: 1, child: Text('New group')),
                      const PopupMenuItem(
                          value: 2, child: Text('New broadcast')),
                      const PopupMenuItem(
                          value: 3, child: Text('Linked devices')),
                      const PopupMenuItem(
                          value: 4, child: Text('Starred messages')),
                      const PopupMenuItem(value: 5, child: Text('Payments')),
                      const PopupMenuItem(value: 6, child: Text('Settings')),
                    ]),
          ],
        ),
        body: const TabBarView(children: [
          CommunitiesPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ]),
      ),
    );
  }
}
