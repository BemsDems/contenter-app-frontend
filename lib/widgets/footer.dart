import 'package:flutter/material.dart';

import '../style/colors.dart' as colors;
import '../style/fonts.dart' as fonts_style;

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 178,
        color: colors.gray04,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: fonts_style.footerMedium,
            ),
            const SizedBox(height: 40),
            Text(
              'Contenter Club',
              style: fonts_style.footerLarge,
            ),
            Text(
              'All rights are reserved',
              style: fonts_style.footerMedium,
            ),
          ],
        ),
    );
  }
}