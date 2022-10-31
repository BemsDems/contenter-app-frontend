import 'package:contenter/config/size_config.dart';
import 'package:contenter/modules/navigation_page.dart';
import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:contenter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final size = SizeConfig();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style_colors.gray03,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.getHeight(61)),
                  Text(
                    'Marketplace for\ncontent creation',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.spaceGrotesk(textStyle: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(height: size.getHeight(72)),
                  Text(
                    'Login to',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.spaceGrotesk(textStyle: TextStyle(color: Colors.black, fontSize: 31, fontWeight: FontWeight.w400)),
                  ),
                  Text(
                    'Contenter Club',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.spaceGrotesk(textStyle: TextStyle(color: Colors.black, fontSize: 31, fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(height: size.getHeight(45)),
                  CustomTextField(typeTextField: 'E-mail', hintText: 'E-mail'),
                  SizedBox(height: size.getHeight(15)),
                  CustomTextField(typeTextField: 'Password', hintText: 'Password', initialValue: 'Alex Bronx'),
                  SizedBox(height: size.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/propertyQuestion.png',
                        width: size.getWidth(20),
                        height: size.getWidth(20),
                      ),
                      TextButton(
                          child: Text(
                            'Forgot password',
                            textScaleFactor: SizeConfig().textScaleFactor,
                            style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, decoration: TextDecoration.underline)),
                          ),
                          onPressed: () {
                            print('button pressed');
                          }),
                    ],
                  ),
                  SizedBox(height: size.getHeight(20)),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          style: style_buttons.primary,
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.getHeight(30)),
                  Text(
                    'Sign Up',
                    style: GoogleFonts.openSans(textStyle: TextStyle(color: style_colors.blue, fontSize: 16, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NavigationPage();
          }));
        },
        tooltip: 'Navigation',
        child: const Icon(Icons.add),
      ),
    );
  }
}
