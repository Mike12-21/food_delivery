import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/firebase_options.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/services/auth/auth_gate.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

import 'models/cart_provider.dart';

Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
    providers: [
      //themeProvider
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      //restaurantProvider
      ChangeNotifierProvider(
        create: (context) => Restaurant(),
        
      ),
      //cartProvider
      ChangeNotifierProvider(
      create: (context) => CartProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
