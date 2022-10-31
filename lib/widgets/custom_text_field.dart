import 'package:contenter/config/size_config.dart';
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  String typeTextField;
  String hintText;
  String? initialValue;
  CustomTextField({Key? key, required this.typeTextField, required this.hintText, this.initialValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$typeTextField',
          textScaleFactor: SizeConfig().textScaleFactor,
          style: GoogleFonts.manrope(textStyle: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600)),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(color: style_colors.gray04, borderRadius: BorderRadius.circular(10), boxShadow: [
            BoxShadow(
              color: style_colors.gray05.withOpacity(0.5),
              blurRadius: 2,
            ),
          ]),
          child: TextFormField(
            style: GoogleFonts.manrope(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '$hintText',
              hintStyle: GoogleFonts.manrope(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            ),
            initialValue: initialValue,
          ),
        )
      ],
    );
  }
}