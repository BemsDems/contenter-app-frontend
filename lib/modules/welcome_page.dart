import 'package:contenter/config/size_config.dart';
import 'package:contenter/modules/navigation_page.dart';
import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style_colors.gray03,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to',
                    style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 45, fontWeight: FontWeight.w400)),
                  ),
                  Text(
                    'Contenter Club',
                    style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 45, fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(height: SizeConfig().getHeight(18)),
                  Text(
                    'Get paid for what you love to create',
                    style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig().getHeight(18)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Image.asset(
                  'assets/images/welcome.png',
                ),
              ),
              // const SizedBox(height: 18),
              Row(children: [
                Expanded(
                  child: TextButton(
                    style: style_buttons.primary,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const NavigationPage();
                      }));
                    },
                    child: Text(
                      'Continue',
                      style: GoogleFonts.openSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
