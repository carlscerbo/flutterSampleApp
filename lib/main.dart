import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text('دانشکده فنی سقز'),
        ),
        endDrawer: Drawer(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(5),
                  // decoration: BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/avatar.png', height: 80),
                      const Text(
                        'نام کاربری',
                        style: TextStyle(fontSize: 15),
                      ),
                      const Text(
                        'info@mail.com',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('صفحه اصلی'),
                  leading: const Icon(Icons.home),
                  onTap: () {
                    log('صفحه اصلی');
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.rtl,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'صفحه اصلی',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'جستجو',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'پروفایل',
              ),
            ],
            currentIndex: _currentItem,
            selectedItemColor: Colors.blueAccent,
            onTap: (int index) {
              setState(() {
                _currentItem = index;
              });
            },
          ),
        ),
        body: Center(
          child: Image.asset('assets/images/background.png'),
        ),
      ),
    );
  }
}
