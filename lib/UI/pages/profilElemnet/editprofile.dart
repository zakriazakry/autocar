import 'package:flutter/material.dart';

import '../../../consts/colors.dart';
import '../../../langs/Langauge.dart';
import '../../../main.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_rounded)),
                    Text(
                      IsAR() ? ar['39'] : en['39'],
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
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
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                      hintText: IsAR() ? ar['41'] : en['41'],
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
                      hintText: IsAR() ? ar['42'] : en['42'],
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
                      hintText: IsAR() ? ar['43'] : en['43'],
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                      child: Text(
                        IsAR() ? ar['44'] : en['44'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: isDark
                              ? const Color.fromARGB(255, 163, 162, 162)
                              : color1,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45, vertical: 10),
                      decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        IsAR() ? ar['45'] : en['45'],
                        style: const TextStyle(
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
      ),
    );
  }
}
