// ignore_for_file: use_build_context_synchronously

import 'package:autocars/UI/Widgets/drawer/drawer_widget_EN.dart';
import 'package:autocars/UI/pages/search/searchPage.dart';
import 'package:autocars/UI/pages/splash_screen.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:autocars/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../consts/colors.dart';
import '../../../providers/providerTheme.dart';
import '../../Widgets/drawer/drawer_widget_AR.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isVisable = false;
  bool dark = false;
  @override
  void initState() {
    dark = isDark;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providerTheme = Provider.of<ProviderTheme>(context);

    return Scaffold(
      drawer: IsAR() ? null : const DrawerPageEN(),
      endDrawer: IsAR() ? const DrawerPage() : null,
      appBar: IsAR()
          ? AppBar(
              iconTheme: const IconThemeData(
                color: color5,
              ),
              backgroundColor: color3,
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(PageAnimationTransition(
                        page: const SearchPage(),
                        pageAnimationType: RightToLeftFadedTransition()));
                  },
                  icon: const Icon(
                    Icons.search,
                    color: color5,
                  )),
            )
          : AppBar(
              iconTheme: const IconThemeData(
                color: color5,
              ),
              backgroundColor: color3,
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const SearchPage(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    icon: const Icon(
                      Icons.search,
                      color: color5,
                    ))
              ],
            ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment:
              IsAR() ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                IsAR() ? ar["50"] : en["50"],
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                  color: isDark
                      ? color1
                      : const Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  //elements
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoSwitch(
                        activeColor: color3,
                        value: dark,
                        onChanged: (value) async {
                          SharedPreferences preferences =
                              await SharedPreferences.getInstance();
                          setState(() {
                            if (value) {
                              providerTheme.setTheme(const ColorScheme.dark());
                              isDark = true;
                              preferences.setBool("isactive", true);
                            } else {
                              isDark = false;
                              providerTheme.setTheme(const ColorScheme.light());
                              preferences.setBool("isactive", false);
                            }

                            dark = value;
                          });
                        },
                      ),
                      Row(
                        children: [
                          Text(
                            IsAR() ? ar["51"] : en["51"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.dark_mode_outlined),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Auto Car'),
                            content: IsAR()
                                ? Text(
                                    textDirection: TextDirection.rtl,
                                    ar['52'],
                                    style: const TextStyle(fontSize: 16),
                                  )
                                : Text(
                                    en['52'],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('حسناً'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "حول التطبيق",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.info)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisable = !isVisable;
                                });
                              },
                              icon: isVisable
                                  ? const Icon(Icons.arrow_drop_up_outlined)
                                  : const Icon(Icons.arrow_drop_down)),
                          Row(
                            children: [
                              Text(
                                IsAR() ? ar["53"] : en["53"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.language),
                            ],
                          )
                        ],
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        child: !isVisable
                            ? Container()
                            : Column(
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      SharedPreferences preferences =
                                          await SharedPreferences.getInstance();
                                      language = 'AR';
                                      preferences.setString("language", "AR");
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const SplashScreen()),
                                          (Route<dynamic> route) =>
                                              route is SplashScreen);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "عربي",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        !IsAR()
                                            ? const Icon(
                                                Icons.minimize,
                                              )
                                            : const Icon(
                                                Icons.done,
                                              ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      SharedPreferences preferences =
                                          await SharedPreferences.getInstance();
                                      language = 'EN';
                                      preferences.setString("language", "EN");
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const SplashScreen()),
                                          (Route<dynamic> route) =>
                                              route is SplashScreen);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "English",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        IsAR()
                                            ? const Icon(
                                                Icons.minimize,
                                              )
                                            : const Icon(
                                                Icons.done,
                                              ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        IsAR() ? ar["54"] : en["54"],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.logout)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
