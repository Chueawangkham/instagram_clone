import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter/responsive/web_screen_layout.dart';
import 'package:instagram_flutter/screens/login_screen.dart';
import 'package:instagram_flutter/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyB5gbe7ExXHx64FnTAfFJFG5v8fIczTU54',
        appId: '1:890165298329:web:b21b8fdb0ef9e0e5412408',
        messagingSenderId: '890165298329',
        projectId: 'instagram-tut-11f0c',
        storageBucket: 'instagram-tut-11f0c.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      title: 'Instagram Clone',
      // home: const Scaffold(
      //   body: SafeArea(
      //     child: ResponsiveLayout(
      //         webScreenLayout: WebScreenLayout(),
      //         mobileScreenLayout: MobileScreenLayout()),
      //   ),
      // ),
      home: const LoginScreen(),
    );
  }
}
