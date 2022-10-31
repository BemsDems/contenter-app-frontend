import 'package:contenter/config/size_config.dart';
import 'package:contenter/data_structs/profile.dart';
import 'package:contenter/modules/navigation_page.dart';
import 'package:contenter/style/colors.dart' as style_colors;
import 'package:contenter/widgets/base_page.dart';
import 'package:contenter/widgets/marketplace.dart';
import 'package:contenter/widgets/my_proposals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final profile = ProfileData();

  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: style_colors.gray03,
        body: SafeArea(
          child: BasePageWidget(
            profile: profile,
            child: SizedBox(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      onTap: (index) {
                        _changeTab(index);
                      },
                      labelStyle: TextStyle(fontWeight: FontWeight.w700),
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                      indicator: BoxDecoration(),
                      tabs: [
                        Tab(
                            child: Text(
                          'Marketplace',
                          style: GoogleFonts.spaceGrotesk(color: Colors.black, textStyle: TextStyle(fontSize: 22)),
                        )),
                        Tab(
                            child: Text(
                          'My proposals',
                          style: GoogleFonts.spaceGrotesk(color: Colors.black, textStyle: TextStyle(fontSize: 22)),
                        )),
                      ],
                    ),
                    Builder(builder: (_) {
                      if (_selectedTab == 0) {
                        return MarketplaceWidget();
                      } else if (_selectedTab == 1) {
                        return MyProposalsWidget();
                      } else {
                        throw Exception('Wrong tab index');
                      }
                    }),
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
