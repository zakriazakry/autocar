import 'package:autocars/UI/pages/home/home.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class Singuppage extends StatefulWidget {
  const Singuppage({super.key});

  @override
  State<Singuppage> createState() => _SinguppageState();
}

class _SinguppageState extends State<Singuppage> {
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
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const HomePage(),
                          pageAnimationType: RightToLeftFadedTransition()));
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
                    "اشتراك",
                    style: TextStyle(
                        color: color1,
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
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'الإسم الأول',
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
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.text,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'الإسم الثاني',
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
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'البريد الإلكتروني',
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
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: TextFormField(
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.phone,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'رقم الهاتف',
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  hintText: 'تأكيد الرمز السري',
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
              child: const Text("تسجيل اشتراك",
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
                RichText(
                  text: const TextSpan(
                    text: 'تسجيل الدخول',
                    style: TextStyle(
                      fontFamily: "font1",
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: color3,
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
                      "اذا كان لديم حساب بالفعل,يرجي الضغط علي ",
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
