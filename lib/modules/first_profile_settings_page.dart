import 'package:contenter/config/size_config.dart';
import 'package:contenter/modules/navigation_page.dart';
import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:contenter/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstProfileSettingsPage extends StatelessWidget {
  const FirstProfileSettingsPage({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: SizeConfig().getHeight(50)),
                    Text(
                      'Welcome to',
                      style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 45, fontWeight: FontWeight.w400)),
                    ),
                    Text(
                      'Contenter Club',
                      style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 45, fontWeight: FontWeight.w700)),
                    ),
                    SizedBox(height: SizeConfig().getHeight(90)),
                    Text(
                      'Before we start - please introduce',
                      style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(height: SizeConfig().getHeight(90)),
                    Row(
                      children: [
                        SizedBox(
                          width: SizeConfig().getWidth(72),
                          height: SizeConfig().getWidth(72),
                          child: CircleAvatar(
                            backgroundColor: style_colors.gray02,
                            child: Icon(
                              Icons.account_circle_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                style_buttons.SecondaryButton(
                                  style:
                                      style_buttons.secondary.copyWith(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 10))),
                                  onPressed: () {},
                                  child: Text(
                                    'Upload photo',
                                    style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                style_buttons.SecondaryButton(
                                  style: style_buttons.secondary,
                                  child: Image.asset(
                                    'assets/icons/propertyTrash.png',
                                    width: SizeConfig().getWidth(20),
                                    height: SizeConfig().getWidth(20),
                                    color: style_colors.negative,
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'PNG, JPG up to 4 MB',
                              style: GoogleFonts.manrope(textStyle: const TextStyle(color: style_colors.gray01, fontSize: 14, fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig().getHeight(20)),
                    CustomTextField(
                      typeTextField: 'Name *',
                      hintText: 'Name',
                      initialValue: 'Alex Bronx',
                    ),
                    SizedBox(height: SizeConfig().getHeight(18)),
                    Row(children: [
                      Expanded(
                        child: TextButton(
                          style: style_buttons.primary,
                          onPressed: () {},
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
        ));
  }
}
