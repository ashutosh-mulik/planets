import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.sairaCondensedTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}

