import 'package:flutter/material.dart';

class ThemeApp {
  static Color primary = const Color(0xFFFF4081);

  static ThemeData primaryTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: primary),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: primary),
      primaryIconTheme: IconThemeData(color: Colors.white),
      // elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith(()=>Colors.blue))
    );
  }
}

//*un comentario verde
//pink un comentario ros
//?un comentario azul
//info unc
//todo
//!un comentariorojo
//yellow un comentario amarillo
//white un comentario blanco
