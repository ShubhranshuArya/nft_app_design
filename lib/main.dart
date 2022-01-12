import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app_design/screens/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      title: 'NFT App',
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
