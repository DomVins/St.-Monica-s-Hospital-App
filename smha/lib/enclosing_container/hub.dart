import 'package:flutter/material.dart';

import 'enclosing_container_items/records.dart';
import 'enclosing_container_items/home_elements.dart';
import 'enclosing_container_items/consultant.dart';
import 'enclosing_container_items/prescription.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("St. Monica's Hospital",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.0)),
                      Text("Adikpo",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.0)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Your medical well being is our priority . . .',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 2.0,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: MediaQuery.of(context).size.width * 0.05,
              ),
              color: Colors.grey,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 1.0,
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: (selectedIndex == 0)
                      ? const HomeElements()
                      : (selectedIndex == 1)
                          ? const Consultant()
                          : (selectedIndex == 2)
                              ? const Records()
                              : const Prescription()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: const Color.fromARGB(255, 100, 97, 97),
          selectedItemColor: Colors.blue,
          unselectedLabelStyle: const TextStyle(color: Colors.blue),
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_rounded)),
            BottomNavigationBarItem(
                label: 'Consultant', icon: Icon(Icons.chat_rounded)),
            BottomNavigationBarItem(
                label: 'Records', icon: Icon(Icons.history)),
            BottomNavigationBarItem(
                label: 'Prescriptions', icon: Icon(Icons.medical_services)),
          ]),
    );
  }
}
