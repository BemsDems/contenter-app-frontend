import 'package:contenter/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/colors.dart' as colors;

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: colors.gray04,
        width: double.infinity,
        height: SizeConfig().getHeight(58),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Contenter Club',
          style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700)),
        ));
  }
}
