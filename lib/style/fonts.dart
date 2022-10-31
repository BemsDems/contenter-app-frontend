import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart' as colors;

class Fonts {
  static const titleLarge = TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
}

const headlineLarge = TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
final headlineMedium = GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: colors.black, fontSize: 18, fontWeight: FontWeight.w800));
const headlineSmall = TextStyle(fontSize: 22, fontWeight: FontWeight.w500, height: 1.36);

const titleLarge = TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
//const titleMedium = TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.36);
final titleMedium = GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: colors.black, fontSize: 16, fontWeight: FontWeight.w800));
const titleSmall = TextStyle(fontSize: 22, fontWeight: FontWeight.w500, height: 1.36);

const bodyLarge = TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
const bodyMedium = TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.36);
const bodySmall = TextStyle(fontSize: 22, fontWeight: FontWeight.w500, height: 1.36);

const labelLarge = TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
const labelMedium = TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.36);
const labelSmall = TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.36);

final footerLarge = GoogleFonts.jetBrainsMono(textStyle: const TextStyle(color: colors.black, fontSize: 25, fontWeight: FontWeight.w700));

final footerMedium = GoogleFonts.jetBrainsMono(textStyle: const TextStyle(color: colors.black, fontSize: 18, fontWeight: FontWeight.w400));

final proposalsViewSettingsActive = GoogleFonts.manrope(textStyle: const TextStyle(color: colors.white, fontSize: 16, fontWeight: FontWeight.w400));
final proposalsViewSettingsInactive = GoogleFonts.manrope(textStyle: const TextStyle(color: colors.blue, fontSize: 16, fontWeight: FontWeight.w400));
