// ignore_for_file: file_names

import 'package:autocars/UI/pages/drawer_elemnets/Favorite.dart';
import 'package:autocars/UI/pages/drawer_elemnets/ads.dart';
import 'package:autocars/UI/pages/drawer_elemnets/profile.dart';
import 'package:autocars/UI/pages/drawer_elemnets/setting.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:flutter/material.dart';

import '../../pages/home/home.dart';

class DrawerPageEN extends StatefulWidget {
  const DrawerPageEN({super.key});

  @override
  State<DrawerPageEN> createState() => _DrawerPageENState();
}

class _DrawerPageENState extends State<DrawerPageEN> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://1.bp.blogspot.com/-eeY30Z70NKM/YUZGW4gmPtI/AAAAAAACRpE/2Cfi9SncPQciZdNVhqNefgF_QIXSYmZMgCLcBGAsYHQ/w400-h250/%25D8%25B3%25D9%258A%25D8%25A7%25D8%25B1%25D8%25A7%25D8%25AA-%25D8%25A8%25D8%25A7%25D9%2584%25D8%25B5%25D9%2588%25D8%25B1-2.jpg"),
              ),
              const Text(
                "محمد علي",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              const ListTile(
                title: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Category",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                leading: Icon(Icons.folder),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(
                                langNumber: '21',
                                name: IsAR() ? ar['21'] : en['21'],
                                category: "السيارات",
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Cars",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(
                                langNumber: '25',
                                category: "الشاحنات",
                                name: IsAR() ? ar['25'] : en['25'],
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Trucks",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(
                                langNumber: '24',
                                category: "دراجات نارية",
                                name: IsAR() ? ar['24'] : en['24'],
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Motorcycles",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(
                                langNumber: '23',
                                category: "الإطارات",
                                name: IsAR() ? ar['23'] : en['23'],
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Tires",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(
                                langNumber: '22',
                                category: "قطع غيار",
                                name: IsAR() ? ar['22'] : en['22'],
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Parts",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(
                                langNumber: '26',
                                name: IsAR() ? ar['26'] : en['26'],
                                category: "القوارب",
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Boats",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const Favoritepage()),
                      (Route<dynamic> route) => route is Favoritepage);
                },
                title: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Favorite",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                leading: const Icon(Icons.star),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const MyAds()),
                      (Route<dynamic> route) => route is MyAds);
                },
                title: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ADs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                leading: const Icon(Icons.library_books),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfilePage()),
                      (Route<dynamic> route) => route is ProfilePage);
                },
                title: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                leading: const Icon(Icons.person_pin),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SettingPage()),
                      (Route<dynamic> route) => route is SettingPage);
                },
                title: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Setting",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                leading: const Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
