import 'package:contenter/modules/first_profile_settings_page.dart';
import 'package:contenter/modules/login_page.dart';
import 'package:contenter/modules/main_page.dart';
import 'package:contenter/modules/style_page.dart';
import 'package:contenter/modules/welcome_page.dart';
import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(64),
        child: Center(
          child: Column(
            children: [
              Text('test123'),
              style_buttons.PrimaryButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const StylePage();
                  }));
                },
                child: const Text('Style'),
              ),
              TextButton(
                child: const Text('Login'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
              ),
              TextButton(
                child: const Text('Welcome'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WelcomePage();
                  }));
                },
              ),
              TextButton(
                child: const Text('FirstProfileSettings'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FirstProfileSettingsPage();
                  }));
                },
              ),
              TextButton(
                child: const Text('Main'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
