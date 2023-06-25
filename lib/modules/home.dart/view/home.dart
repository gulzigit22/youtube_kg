import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube_kg/modules/home.dart/widgets/slide.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
            child: Image.asset(
          '/images/youtb.png',
          height: 100,
          width: 100,
        )),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 100,
              width: 100,
            ),
          ],
        ),
        actions: const [
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.add_alert_outlined,
                size: 30,
                color: Color.fromARGB(255, 23, 23, 23),
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.search,
                size: 30,
                color: Color.fromARGB(255, 23, 23, 23),
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.account_circle,
                size: 30,
                color: Color.fromARGB(255, 23, 23, 23),
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
        physics: const ScrollPhysics(),
        itemCount: 5,
        shrinkWrap: true,
        // itemCount: appText.length,

        itemBuilder: (BuildContext context, index) {
          return ListTile(
              title: Column(
            children: [
              slidi(
                imgurl: 'assets/1.1.tv.jpg',
                name1: 'kudalar',
                poName: '1213 тыс, пасмотров',
                days: '1 дней назад',
                tim: '12:00',
                images: 'assets/youtb.png',
              )
            ],
          ));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Color.fromARGB(255, 16, 16, 16),
        unselectedItemColor: Color.fromARGB(255, 23, 23, 23),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.add_circle_outline,
              color: Colors.red,
            ),
            icon: Icon(Icons.add_circle_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.account_circle_outlined,
              color: Colors.red,
            ),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
