import 'package:flutter/material.dart';

import '../data_structs/profile.dart';
import '../style/colors.dart' as style_colors;
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/profile_brief.dart';

class BasePageWidget extends StatelessWidget {
  final ProfileData? profile;
  final Widget child;

  const BasePageWidget({super.key, this.profile, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: style_colors.gray03,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const HeaderWidget(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      if (profile != null)
                        Column(
                          children: [
                            const SizedBox(height: 10),
                            ProfileBriefWidget(profile: profile!),
                            const SizedBox(height: 15),
                          ],
                        ),
                      child
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Align(alignment: Alignment.bottomCenter, child: FooterWidget()),
          )
        ],
      ),
    );
  }
}
