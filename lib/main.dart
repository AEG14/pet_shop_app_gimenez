import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/cart_page.dart';
import 'pages/home.dart';
import 'pages/store.dart';
import 'providers/cart_provider.dart';
import 'providers/search_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(create: (context) => SearchProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomePage(),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/store": (context) => StoreWidget(),
        "/cart": (context) => CartPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
