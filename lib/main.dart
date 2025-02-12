import 'package:appwrite/appwrite.dart';
import 'package:dating_app/core/constants/appwrite_constants.dart';
import 'package:dating_app/core/theme/custom_theme.dart';
import 'package:dating_app/provider/auth_provider.dart';
import 'package:dating_app/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dating_app/provider/splash_provider.dart';
import 'package:dating_app/provider/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Client().setProject(AppwriteConstant.projectId);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => SplashProvider()),
    ChangeNotifierProvider(create: (_)=> AuthProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.dark(),
      darkTheme: CustomTheme.dark(),
      // themeMode: themeProvider.themeMode,
      home: SplashScreen(),
    );
  }
}
