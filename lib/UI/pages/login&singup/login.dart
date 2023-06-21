import 'package:autocars/UI/pages/home/home.dart';
import 'package:autocars/UI/pages/login&singup/singup.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
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
                                    category: "السيارات",
                                 
                                  )),
                          (Route<dynamic> route) => route is HomePage);
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'تخطي',
                        style: TextStyle(
                          fontFamily: "font1",
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: color3,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "تسجيل دخول",
                    style: TextStyle(
                        color: color1,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'الايميل او رقم الهاتف',
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 30, right: 10, left: 10, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'الرمز السري',
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'نسيت كلمة السر؟',
                        style: TextStyle(
                          fontFamily: "font1",
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: color3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 30, right: 10, left: 10, bottom: 5),
              decoration: BoxDecoration(
                  color: color3, borderRadius: BorderRadius.circular(10)),
              child: const Text("تسجيل الدخول",
                  style: TextStyle(
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
              child: const Text("إلغاء",
                  style: TextStyle(
                      color: color5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 0.7,
                  color: color1,
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
                const Text("او"),
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
                child: const Text(
                  "يمكنك تسجيل الدخول من الحسابات التالية",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Row(
                    children: [
                      const Text("فيسبوك", style: TextStyle(fontSize: 18)),
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
                      border: Border.all(width: 1)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("قوقل", style: TextStyle(fontSize: 18)),
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
                    Navigator.of(context).push(PageAnimationTransition(
                        page: const Singuppage(),
                        pageAnimationType: RightToLeftFadedTransition()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'الاشتراك',
                      style: TextStyle(
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
                    child: const Text(
                      "اذا لم تمتلك حساب فقم بعملية",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
