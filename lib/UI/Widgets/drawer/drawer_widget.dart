import 'package:autocars/UI/pages/drawer_elemnets/Favorite.dart';
import 'package:autocars/UI/pages/drawer_elemnets/ads.dart';
import 'package:autocars/UI/pages/drawer_elemnets/profile.dart';
import 'package:autocars/UI/pages/drawer_elemnets/setting.dart';
import 'package:flutter/material.dart';

import '../../pages/home/home.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
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
                      "التصنيف",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                trailing: Icon(Icons.folder),
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
                                category: "السيارات",
                             
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "سيارات",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 50,
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
                                category: "الشاحنات",
                             
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "الشاحنات",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 50,
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
                                category: "دراجات نارية",
                             
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "دراجات نارية",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 50,
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
                                category: "الإطارات",
                             
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "الإطارات",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 50,
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
                                category: "قطع غيار",
                             
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "قطع غيار",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 50,
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
                                category: "القوارب",
                             
                              )),
                      (Route<dynamic> route) => route is HomePage);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "القوارب",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 50,
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
                    alignment: Alignment.centerRight,
                    child: Text(
                      "المفضلة",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                trailing: const Icon(Icons.star),
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
                    alignment: Alignment.centerRight,
                    child: Text(
                      "الإعلانات",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                trailing: const Icon(Icons.library_books),
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
                    alignment: Alignment.centerRight,
                    child: Text(
                      "الملف الشخصي",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                trailing: const Icon(Icons.person_pin),
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
                    alignment: Alignment.centerRight,
                    child: Text(
                      "الإعدادات",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                trailing: const Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
