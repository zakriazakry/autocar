import 'package:autocars/langs/Langauge.dart';
import 'package:autocars/main.dart';
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                    Text(
                      IsAR() ? ar['40'] : en['40'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  IsAR() ? ar['46'] : en['46'],
                  style: const TextStyle(fontSize: 13),
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
                      color: isDark
                          ? const Color.fromARGB(255, 163, 162, 162)
                          : color1,
                      width: 1.0,
                    ),
                  ),
                  child: TextFormField(
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: IsAR() ? ar['47'] : en['47'],
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
                    obscureText: true,
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: IsAR() ? ar['48'] : en['48'],
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
                    obscureText: true,
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: IsAR() ? ar['49'] : en['49'],
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
