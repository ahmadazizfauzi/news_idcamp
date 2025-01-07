import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/persentation/screens/home/home_screen.dart';
import 'package:news/persentation/screens/welcome/welcome_screen.dart';
import 'package:news/routes/bottom_bar_route.dart';
import 'package:news/persentation/screens/detail_news/detail_news_screen.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'news',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryTextTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).primaryTextTheme,
        ),
      ),
      initialRoute: '/isLoggedIn',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/isLoggedIn': (context) => const BottomBarRoute(),
        '/detail-news': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return DetailNewsScreen(newsId: args['newsId']);
        },
      },
    );
  }
}
