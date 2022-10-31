
import 'package:contenter/modules/navigation_page.dart';
import 'package:contenter/style/buttons.dart' as style_buttons;
import 'package:flutter/material.dart';


class StylePage extends StatelessWidget {
  const StylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('test'),
            const SizedBox(height: 16),
            style_buttons.PrimaryButton(child: const Text('Primary'), onPressed: () {}),
            const SizedBox(height: 16),
            style_buttons.SecondaryButton(child: const Text('Secondary'), onPressed: () {}),
            const SizedBox(height: 16),
            style_buttons.RejectButton(child: const Text('Reject'), onPressed: () {}),
          ],
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
      )
    );
  }
}