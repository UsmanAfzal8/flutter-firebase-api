import 'package:flutter/material.dart';
import 'package:flutter_backend/screen/auth/signup_screen.dart';
import 'package:provider/provider.dart';

import 'provider/provider.dart';
import 'screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppThemeProvider>.value(
          value: AppThemeProvider(),
        ),
      ],
      child: Consumer<AppThemeProvider>(
        
        builder: (context,AppThemeProvider themePro,_) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          themeMode: themePro.themeMode,
            home: const LoginScreen(),
            initialRoute: LoginScreen.route,
            routes:{
              LoginScreen.route: (context) => const LoginScreen(),
              SignupScreen.routes:(context) => const SignupScreen(),
            } ,
          );
        }
      ),
    );
  }
}
