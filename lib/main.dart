import 'package:autocars/UI/pages/splash_screen.dart';
import 'package:autocars/consts/colors.dart';
import 'package:autocars/providers/providerTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isDark = false;
String language = 'AR';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isDark = prefs.getBool("isactive") ?? false;
  language = prefs.getString("language") ?? "En";

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProviderTheme(isDark),
      child: const Autocar(),
    );
  }
}

class Autocar extends StatelessWidget {
  const Autocar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerTheme = Provider.of<ProviderTheme>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        primaryColor: color3,
        colorScheme: providerTheme.getTheme(),
        useMaterial3: true,
        fontFamily: 'font1',
      ),
    );
  }
}
//
