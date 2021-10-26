import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FoodTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.baloo(
      fontSize: 14.0,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
    headline1: GoogleFonts.greatVibes(
      fontSize: 32.0,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
    headline2: GoogleFonts.greatVibes(
      fontSize: 20.0,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
    headline3: GoogleFonts.greatVibes(
      fontSize: 16.0,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.baloo(
      fontSize: 14.0,
      fontWeight:FontWeight.w700,
      color: Colors.white,
    ),
    headline1: GoogleFonts.greatVibes(
      fontSize: 32.0,
      fontWeight:FontWeight.w700,
      color: Colors.white,
    ),
    headline2: GoogleFonts.greatVibes(
      fontSize: 20.0,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
    headline3: GoogleFonts.greatVibes(
      fontSize: 16.0,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
    headline6: GoogleFonts.greatVibes(
      fontSize: 9.0,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
  );

  static ThemeData  light(){
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
      ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.red,
        )
    );
  }
  static ThemeData  dark(){
    return ThemeData(
        brightness: Brightness.dark,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),

        ),
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
        ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.red
      )
    );
  }

}