import 'package:coding_task/screens/authentication.dart';
import 'package:coding_task/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: MaterialApp(
        title: 'ConnectMe',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        home: const AuthenticationScreen(),
      ),
    );
  }
}
