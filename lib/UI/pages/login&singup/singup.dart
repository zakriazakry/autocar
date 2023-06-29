import 'package:autocars/UI/pages/home/home.dart';
import 'package:autocars/consts/colors.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class Singuppage extends StatefulWidget {
  const Singuppage({super.key});

  @override
  State<Singuppage> createState() => _SinguppageState();
}

class _SinguppageState extends State<Singuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? const Color.fromARGB(255, 15, 15, 15) : color5,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomePage(
                                    langNumber: '21',
                                    category: "سيارات",
                                    name: IsAR() ? ar['21'] : en['21'],
                                  )),
                          (Route<dynamic> route) => route is HomePage);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: IsAR() ? ar['1'] : en['1'],
                        style: const TextStyle(
                          fontFamily: "font1",
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: color3,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    IsAR() ? ar['10'] : en['10'],
                    style: TextStyle(
                        color: isDark ? color5 : color1,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        "https://nextluxury.com/wp-content/uploads/funny-profile-pictures-2.jpg"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: color1,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // textfeilds
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isDark
                      ? const Color.fromARGB(255, 163, 162, 162)
                      : color1,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: IsAR() ? ar['12'] : en['12'],
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isDark
                      ? const Color.fromARGB(255, 163, 162, 162)
                      : color1,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: IsAR() ? ar['13'] : en['13'],
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isDark
                      ? const Color.fromARGB(255, 163, 162, 162)
                      : color1,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: IsAR() ? ar['14'] : en['14'],
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isDark
                      ? const Color.fromARGB(255, 163, 162, 162)
                      : color1,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.phone,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: IsAR() ? ar['15'] : en['15'],
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isDark
                      ? const Color.fromARGB(255, 163, 162, 162)
                      : color1,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: IsAR() ? ar['16'] : en['16'],
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isDark
                      ? const Color.fromARGB(255, 163, 162, 162)
                      : color1,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: IsAR() ? ar['17'] : en['17'],
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            // textfeilds-> end
            // btns
            Container(
              alignment: Alignment.center,
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 30, right: 10, left: 10, bottom: 5),
              decoration: BoxDecoration(
                  color: color3, borderRadius: BorderRadius.circular(10)),
              child: Text(IsAR() ? ar['18'] : en['18'],
                  style: const TextStyle(
                      color: color5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            Container(
              alignment: Alignment.center,
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 30, right: 10, left: 10, bottom: 5),
              decoration: BoxDecoration(
                  color: color1, borderRadius: BorderRadius.circular(10)),
              child: Text(IsAR() ? ar['6'] : en['6'],
                  style: const TextStyle(
                      color: color5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 0.7,
                  color: color1,
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
                Text(
                  IsAR() ? ar['19'] : en['19'],
                ),
                Container(
                  height: 0.7,
                  color: color1,
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(right: 16, bottom: 20),
                alignment: Alignment.centerRight,
                child: Text(
                  IsAR() ? ar['7'] : en['7'],
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: isDark
                            ? const Color.fromARGB(255, 107, 106, 106)
                            : color1,
                      )),
                  child: Row(
                    children: [
                      Text(IsAR() ? ar['8'] : en['8'],
                          style: const TextStyle(fontSize: 18)),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "assets/images/facebook.png",
                        width: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: isDark
                            ? const Color.fromARGB(255, 107, 106, 106)
                            : color1,
                      )),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(IsAR() ? ar['9'] : en['9'],
                          style: const TextStyle(fontSize: 18)),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "assets/images/google.png",
                        width: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: IsAR() ? ar['2'] : en['2'],
                      style: const TextStyle(
                        fontFamily: "font1",
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: color3,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    margin:
                        const EdgeInsets.only(right: 16, bottom: 20, top: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      IsAR() ? ar['11'] : en['11'],
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
