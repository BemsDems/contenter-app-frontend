import 'package:contenter/modules/main_page.dart';
import 'package:contenter/widgets/my_proposals.dart';
import 'package:flutter/material.dart';

import 'style/colors.dart' as style_colors;
import 'style/buttons.dart' as style_buttons;
import 'style/fonts.dart' as style_fonts;

import 'package:contenter/data_structs/profile.dart';

import 'package:contenter/widgets/base_page.dart';
import 'widgets/marketplace.dart';
import 'widgets/long_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contenter',
      theme: ThemeData(
        colorScheme: style_colors.colorScheme,
        backgroundColor: style_colors.background,
        scaffoldBackgroundColor: style_colors.background,
        fontFamily: 'Agrandir',
        textTheme: TextTheme(
          //display
          headlineLarge: style_fonts.headlineLarge,
          headlineMedium: style_fonts.headlineMedium,
          headlineSmall: style_fonts.headlineSmall,
          titleLarge: style_fonts.titleLarge,
          titleMedium: style_fonts.titleMedium,
          titleSmall: style_fonts.titleSmall,
          bodyLarge: style_fonts.bodyLarge,
          bodyMedium: style_fonts.bodyMedium,
          bodySmall: style_fonts.bodySmall,
          labelLarge: style_fonts.labelLarge,
          labelMedium: style_fonts.labelMedium,
          labelSmall: style_fonts.labelSmall,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: style_buttons.primary),
        outlinedButtonTheme: OutlinedButtonThemeData(style: style_buttons.outlinedPrimary),
        textButtonTheme: TextButtonThemeData(style: style_buttons.text),
      ),
      home: MainPage(),
    );
  }
}

