import 'package:flutter/material.dart';

import '../../../consts/colors.dart';

class Repassword extends StatefulWidget {
  const Repassword({super.key});

  @override
  State<Repassword> createState() => _RepasswordState();
}

class _RepasswordState extends State<Repassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  const Text(
                    "تغير كلمة السر",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "يمكنك تغير كلمة السر و إعادة تعين كلمة سرج جديدة",
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: TextFormField(
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'الرمز السري الحالي',
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: TextFormField(
                  obscureText: true,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'الرمز السري الجديد',
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: TextFormField(
                  obscureText: true,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.visiblePassword,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'إعادة كتابه الرمز السري الجديد',
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "إلغاء",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: color1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 10),
                    decoration: BoxDecoration(
                        color: color2, borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "حفظ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: color5),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
