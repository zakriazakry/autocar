import 'package:autocars/UI/Widgets/drawer/drawer_widget.dart';
import 'package:autocars/UI/pages/drawer_elemnets/ads.dart';
import 'package:autocars/UI/pages/profilElemnet/editprofile.dart';
import 'package:autocars/UI/pages/profilElemnet/repassword.dart';
import 'package:autocars/UI/pages/profilElemnet/showadsMethods.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerPage(),
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: color5,
          ),
          backgroundColor: color3,
          leading: PopupMenuButton(
            offset: const Offset(0, 56),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: GestureDetector(
                    onTap: () async {
                      await Navigator.of(context).push(PageAnimationTransition(
                          page: const Editprofile(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: const Text("تعديل الملف الشخصي")),
              ),
              PopupMenuItem(
                child: GestureDetector(
                    onTap: () async {
                      await Navigator.of(context).push(PageAnimationTransition(
                          page: const Repassword(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: const Text("تغيير كلمة السر")),
              ),
            ],
          )),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://1.bp.blogspot.com/-eeY30Z70NKM/YUZGW4gmPtI/AAAAAAACRpE/2Cfi9SncPQciZdNVhqNefgF_QIXSYmZMgCLcBGAsYHQ/w400-h250/%25D8%25B3%25D9%258A%25D8%25A7%25D8%25B1%25D8%25A7%25D8%25AA-%25D8%25A8%25D8%25A7%25D9%2584%25D8%25B5%25D9%2588%25D8%25B1-2.jpg"),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [Text("إعلانات"), Text("0")],
                    ),
                    Container(
                      width: 1,
                      color: Colors.grey,
                      height: 60,
                    ),
                    const Column(
                      children: [Text("إعلانات"), Text("0")],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: color1,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "الملف الشخصي",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // body
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          textDirection: TextDirection.rtl,
                          "محمد",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          "علي",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          "095384823",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          "user@gmail.com",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    //title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          textDirection: TextDirection.rtl,
                          "الاسم الأول :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          "الاسم الثاني :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          "الرقم   : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          textDirection: TextDirection.rtl,
                          "الإيميل  :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: color1,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "الإعدادات",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageAnimationTransition(
                      page: const MyAds(),
                      pageAnimationType: RightToLeftFadedTransition()));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "عرض الإعلانات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Icon(Icons.library_books),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageAnimationTransition(
                      page: const Showadsmethods(),
                      pageAnimationType: RightToLeftFadedTransition()));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "إضافة إعلان",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Icon(Icons.add_circle),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
