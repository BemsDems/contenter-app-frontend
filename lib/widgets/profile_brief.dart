import 'package:contenter/config/size_config.dart';
import 'package:contenter/data_structs/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/buttons.dart' as buttons_style;
import '../style/colors.dart' as colors;

class ProfileBriefWidget extends StatelessWidget {
  final ProfileData profile;

  const ProfileBriefWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.gray04,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: SizeConfig().getWidth(40),
                    height: SizeConfig().getWidth(40),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(profile.linkImage),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${profile.firstname}\n${profile.surname}',
                    style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              const Icon(
                Icons.more_horiz,
                color: colors.blue,
              ),
            ],
          ),
          const Divider(
            color: colors.gray03,
            thickness: 2,
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${profile.requestsCount} requests',
                    style: Theme.of(context).textTheme.titleMedium?.merge(const TextStyle(
                          color: colors.blue,
                        )),
                  ),
                  Text('available', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              TextButton(
                style: buttons_style.onLight,
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Earned ',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '\$${profile.earned}',
                      style: Theme.of(context).textTheme.titleMedium?.merge(const TextStyle(
                            color: colors.blue,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
