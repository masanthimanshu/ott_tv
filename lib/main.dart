import 'package:ott_tv/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "OTT TV App",
        theme: ThemeData(
          brightness: Brightness.dark,
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
