import 'package:contenter/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/colors.dart' as colors;

class CardForMyProposals extends StatelessWidget {
  const CardForMyProposals({
    Key? key,
    required this.businesses,
  }) : super(key: key);

  final List businesses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: businesses.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: SizeConfig().getHeight(200),
            decoration: BoxDecoration(color: colors.gray04, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: SizeConfig().getWidth(40),
                      height: SizeConfig().getWidth(40),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(businesses[index]['linkImage']),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          businesses[index]['name'],
                          style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700)),
                        ),
                        Text(
                          businesses[index]['type'],
                          style: GoogleFonts.openSans(textStyle: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig().getHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const ImageIcon(
                          AssetImage('assets/icons/propertyVideoCamera.png'),
                          size: 30,
                          color: colors.gray01,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Story Video',
                          style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    Text(
                      '\$20',
                      style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700)),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  'To make a video of backstage of making a coffee.',
                  style: GoogleFonts.openSans(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          );
        });
  }
}
